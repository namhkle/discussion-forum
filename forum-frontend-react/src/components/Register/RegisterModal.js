import React, { Component } from 'react';
import { Button, Modal, ModalHeader, ModalBody, ModalFooter, Label, Alert, Row, Col } from 'reactstrap';
import { AvForm, AvField, AvGroup, AvInput } from 'availity-reactstrap-validation';
import { GOOGLE_AUTH_URL, FACEBOOK_AUTH_URL } from '../../constants';
import fbLogo from '../../images/fb-logo.png';
import googleLogo from '../../images/google-logo.png';
import styles from './RegisterModal.scss';
import classNames from 'classnames/bind';
const cx = classNames.bind(styles);

class RegisterModal extends Component {

  constructor(props) {
    super(props);

    this.state = {
      registerError: false
    };
  }

  handleSubmit = (event, errors, { userName, email, password }) => {
    const { handleRegister } = this.props;
    handleRegister(userName, email, password);
  };

  render() {
    const { registerError, handleClose, showModal } = this.props;

    return (
      <Modal isOpen={showModal} toggle={handleClose} >
        <AvForm onSubmit={this.handleSubmit}>
          <ModalHeader id="login-title" toggle={handleClose}>
            Register
          </ModalHeader>
          <ModalBody>
            <Row>
              <Col md="12">
                {registerError ? (
                  <Alert color="danger">
                    <strong>Failed to register!</strong> Please check your credentials and try again.
                  </Alert>
                ) : null}
              </Col>
              <Col md="12">
                <AvField
                  name="userName"
                  label="Username"
                  placeholder="Your username"
                  required
                  errorMessage="Username cannot be empty!"
                  autoFocus
                />
                <AvField
                  name="email"
                  label="Email"
                  placeholder="Your email"
                  required
                  errorMessage="Email cannot be empty!"
                  autoFocus
                />
                <AvField
                  name="password"
                  type="password"
                  label="Password"
                  placeholder="Your password"
                  required
                  errorMessage="Password cannot be empty!"
                />
                <AvGroup check inline>
                  <Label className="form-check-label">
                    <AvInput type="checkbox" name="rememberMe" /> Remember me
                  </Label>
                </AvGroup>
              </Col>
            </Row>
            <div className="mt-1">&nbsp;</div>
            <div className="login-container">
              <SocialLogin />
            </div>
          </ModalBody>
          <ModalFooter>
            <Button color="secondary" onClick={handleClose} tabIndex="1">
              Cancel
            </Button>{' '}
            <Button color="primary" type="submit">
              Register
            </Button>
          </ModalFooter>
        </AvForm>
      </Modal>
    );
  }
}

class SocialLogin extends Component {
  render() {
    return (
      <div className="social-login">
      </div>
    );
  }
}

export default RegisterModal;
