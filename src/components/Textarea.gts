import { cell, formula } from '@lifeart/gxt';

const time = cell(Date.now(), 'time');

const timeInterval = setInterval(() => {
  time.value = Date.now();
}, 1000);

const current = formula(() => {
  return new Date(time.value).toLocaleTimeString();
});

const test = <template></template>;

;<template>
  <textarea>{{current}}</textarea>
</template>;
