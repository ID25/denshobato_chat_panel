import React, { Component } from 'react';
import { reduxForm } from 'redux-form';
import store from '../store/Store';

export default class MessageForm extends Component {
  static propTypes = {
    handleSubmit: React.PropTypes.func.isRequired,
    fields: React.PropTypes.shape({
      body: React.PropTypes.object.isRequired,
      senderClass: React.PropTypes.object.isRequired,
    }),
  };

  render() {
    const { fields: { body, senderClass }, handleSubmit } = this.props;
    return (
      <div className='denshobato-send-message'>
        <form onSubmit={handleSubmit}>
          <input className="message_input" placeholder="Type your message here..." {...body}/>
          <button onclick={handleSubmit} className="text">Send</button>
        </form>
      </div>
    );
  }
}

MessageForm = reduxForm({
  form: 'message-form',
  fields: ['body', 'senderClass'],
})(MessageForm);
