import Component from "@ember/component";
import { classNames, tagName } from "@ember-decorators/component";

@tagName("div")
@classNames("user-custom-preferences-outlet", "discourse-tudiabetes")
export default class DiscourseTudiabetes extends Component {
  <template>
    <div class="controls wordpress-preferences-link">
      <a
        href="http://www.tudiabetes.org/myaccount/?module=profile"
        target="_top"
      >
        Edit Personal Information
      </a>
    </div>
  </template>
}
