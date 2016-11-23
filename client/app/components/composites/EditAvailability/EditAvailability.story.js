import withProps from '../../Styleguide/withProps';
import EditAvailability from './EditAvailability';

const { storiesOf } = storybookFacade;

storiesOf('General')
  .add('EditAvailability', () =>
       withProps(EditAvailability, {}));
