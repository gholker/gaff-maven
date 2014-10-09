package com.example;

import android.test.ActivityInstrumentationTestCase2;
import com.squareup.spoon.Spoon;

import static com.google.android.apps.common.testing.ui.espresso.Espresso.onView;
import static com.google.android.apps.common.testing.ui.espresso.assertion.ViewAssertions.matches;
import static com.google.android.apps.common.testing.ui.espresso.matcher.ViewMatchers.withId;
import static com.google.android.apps.common.testing.ui.espresso.matcher.ViewMatchers.withText;

public class MainActivityAndroidTest extends ActivityInstrumentationTestCase2<MainActivity> {

    public MainActivityAndroidTest() {
        super(MainActivity.class);
    }

    public void testHelloWorld() {
        assertTrue(getActivity().getTitle().equals("Gaff"));
        onView(withId(R.id.test)).check(matches(withText("hello")));
        Spoon.screenshot(getActivity(), "hello");
    }

}
