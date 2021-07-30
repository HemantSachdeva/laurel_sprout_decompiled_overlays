.class public final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/tv/TvSystemUIRootComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$NotificationRowComponentBuilder;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$PresentJdkOptionalInstanceProvider;,
        Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$PresentJdkOptionalLazyProvider;
    }
.end annotation


# static fields
.field private static final ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;


# instance fields
.field private accessibilityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field private accessibilityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private actionClickLoggerProvider:Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

.field private actionProxyReceiverProvider:Lcom/android/systemui/screenshot/GlobalScreenshot_ActionProxyReceiver_Factory;

.field private activityIntentHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityIntentHelper;",
            ">;"
        }
    .end annotation
.end field

.field private activityStarterDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityStarterDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

.field private appOpsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private appOpsCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;"
        }
    .end annotation
.end field

.field private assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

.field private assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

.field private assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

.field private assistLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;"
        }
    .end annotation
.end field

.field private assistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private asyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private authControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;"
        }
    .end annotation
.end field

.field private autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

.field private batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

.field private bindSystemClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;"
        }
    .end annotation
.end field

.field private biometricUnlockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

.field private blurUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/BlurUtils;",
            ">;"
        }
    .end annotation
.end field

.field private bootCompleteCacheImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCacheImpl;",
            ">;"
        }
    .end annotation
.end field

.field private brightnessDialogProvider:Lcom/android/systemui/settings/BrightnessDialog_Factory;

.field private broadcastDispatcherLoggerProvider:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;

.field private bubbleCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleDataRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleDataRepository;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleOverflowActivityProvider:Lcom/android/systemui/bubbles/BubbleOverflowActivity_Factory;

.field private bubblePersistentRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleVolatileRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider:Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;

.field private builderProvider2:Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;

.field private builderProvider3:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

.field private builderProvider4:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider5:Lcom/android/systemui/qs/AutoAddTracker_Builder_Factory;

.field private bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private castControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

.field private cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

.field private channelEditorDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private clockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation
.end field

.field private colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

.field private context:Landroid/content/Context;

.field private contextComponentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/ContextComponentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private controlActionCoordinatorImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsBindingControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            ">;"
        }
    .end annotation
.end field

.field private controlsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsEditingActivityProvider:Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

.field private controlsFavoritingActivityProvider:Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;

.field private controlsListingControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsProviderSelectorActivityProvider:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;

.field private controlsRequestDialogProvider:Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;

.field private controlsUiControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private conversationCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private conversationNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private conversationNotificationProcessorProvider:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor_Factory;

.field private darkIconDispatcherImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

.field private dateFormatUtilProvider:Lcom/android/systemui/util/time/DateFormatUtil_Factory;

.field private defaultUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            ">;"
        }
    .end annotation
.end field

.field private deviceConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private dismissCallbackRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private displayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private displayImeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayImeController;",
            ">;"
        }
    .end annotation
.end field

.field private dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

.field private dockManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dozeFactoryProvider:Lcom/android/systemui/doze/DozeFactory_Factory;

.field private dozeLogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;"
        }
    .end annotation
.end field

.field private dozeLoggerProvider:Lcom/android/systemui/doze/DozeLogger_Factory;

.field private dozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private dozeScrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            ">;"
        }
    .end annotation
.end field

.field private dozeServiceHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;"
        }
    .end annotation
.end field

.field private dozeServiceProvider:Lcom/android/systemui/doze/DozeService_Factory;

.field private dumpHandlerProvider:Lcom/android/systemui/dump/DumpHandler_Factory;

.field private dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicChildBindControllerProvider:Lcom/android/systemui/statusbar/notification/DynamicChildBindController_Factory;

.field private dynamicPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private enhancedEstimatesImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimatesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

.field private extensionControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private falsingManagerProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingManagerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private filesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/io/Files;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

.field private floatingContentCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceLifetimeExtenderProvider:Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;

.field private foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field private garbageMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private globalActionsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;"
        }
    .end annotation
.end field

.field private globalActionsDialogProvider:Lcom/android/systemui/globalactions/GlobalActionsDialog_Factory;

.field private globalActionsImplProvider:Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;

.field private globalScreenshotProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/GlobalScreenshot;",
            ">;"
        }
    .end annotation
.end field

.field private groupCoalescerLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger_Factory;

.field private groupCoalescerProvider:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;

.field private headsUpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            ">;"
        }
    .end annotation
.end field

.field private headsUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private headsUpViewBinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;"
        }
    .end annotation
.end field

.field private hideNotifsForOtherUsersCoordinatorProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;

.field private highPriorityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

.field private iconBuilderProvider:Lcom/android/systemui/statusbar/notification/icon/IconBuilder_Factory;

.field private iconManagerProvider:Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;

.field private initControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation
.end field

.field private injectionInflationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private instantAppNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/InstantAppNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardBypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardEnvironmentImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardIndicationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardLifecyclesDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardMediaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/KeyguardMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardSecurityModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardServiceProvider:Lcom/android/systemui/keyguard/KeyguardService_Factory;

.field private keyguardStateControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private latencyTesterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/LatencyTester;",
            ">;"
        }
    .end annotation
.end field

.field private leakReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation
.end field

.field private lightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private lightsOutNotifControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;"
        }
    .end annotation
.end field

.field private localMediaManagerFactoryProvider:Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

.field private locationControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/LocationControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

.field private lockscreenGestureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation
.end field

.field private lockscreenLockIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ">;"
        }
    .end annotation
.end field

.field private lockscreenWallpaperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private logBufferEulogizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/LogBufferEulogizer;",
            ">;"
        }
    .end annotation
.end field

.field private logBufferFreezerProvider:Lcom/android/systemui/dump/LogBufferFreezer_Factory;

.field private lowPriorityInflationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private managedProfileControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfBroadcastReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfRecentsImplementationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Service;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfSystemUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUI;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mediaArtworkProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private mediaCarouselControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaCarouselController;",
            ">;"
        }
    .end annotation
.end field

.field private mediaControlPanelProvider:Lcom/android/systemui/media/MediaControlPanel_Factory;

.field private mediaControllerFactoryProvider:Lcom/android/systemui/media/MediaControllerFactory_Factory;

.field private mediaCoordinatorProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator_Factory;

.field private mediaDataCombineLatestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataCombineLatest;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDataFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDeviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaFeatureFlagProvider:Lcom/android/systemui/media/MediaFeatureFlag_Factory;

.field private mediaHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaHostProvider:Lcom/android/systemui/media/MediaHost_Factory;

.field private mediaHostStatesManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaResumeListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaTimeoutListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaTimeoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaViewControllerProvider:Lcom/android/systemui/media/MediaViewController_Factory;

.field private memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

.field private navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private networkControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private newBubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private newKeyguardViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private nextAlarmControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

.field private nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

.field private notifBindPipelineInitializerProvider:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;

.field private notifBindPipelineLoggerProvider:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger_Factory;

.field private notifBindPipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;",
            ">;"
        }
    .end annotation
.end field

.field private notifCollectionLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;

.field private notifCollectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            ">;"
        }
    .end annotation
.end field

.field private notifCoordinatorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;",
            ">;"
        }
    .end annotation
.end field

.field private notifInflaterImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notifInflationErrorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;"
        }
    .end annotation
.end field

.field private notifPipelineInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private notifPipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;"
        }
    .end annotation
.end field

.field private notifRemoteViewCacheImplProvider:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;

.field private notifViewBarnProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;",
            ">;"
        }
    .end annotation
.end field

.field private notifViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationClickNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private notificationClickerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger_Factory;

.field private notificationContentInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;",
            ">;"
        }
    .end annotation
.end field

.field private notificationEntryManagerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

.field private notificationFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationInteractionTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationInteractionTracker;",
            ">;"
        }
    .end annotation
.end field

.field private notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRankingManagerProvider:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;

.field private notificationRoundnessManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRowBinderImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRowComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSectionsFeatureManagerProvider:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

.field private notificationSectionsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notificationShadeDepthControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;"
        }
    .end annotation
.end field

.field private notificationShadeWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private notificationsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationsControllerStubProvider:Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub_Factory;

.field private optionalOfControlsFavoritePersistenceWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private optionalOfDividerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;>;"
        }
    .end annotation
.end field

.field private optionalOfLazyOfRecentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private optionalOfRecentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;"
        }
    .end annotation
.end field

.field private optionalOfStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field

.field private overviewProxyRecentsImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyRecentsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private peopleHubDataSourceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private peopleHubViewAdapterImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private peopleHubViewModelFactoryDataSourceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleHubViewModelFactoryDataSourceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;",
            ">;"
        }
    .end annotation
.end field

.field private phoneStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private phoneStatusBarPolicyProvider:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;

.field private pipAnimationControllerProvider:Lcom/android/systemui/pip/PipAnimationController_Factory;

.field private pipBoundsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private pipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/tv/PipManager;",
            ">;"
        }
    .end annotation
.end field

.field private pipMenuActivityProvider:Lcom/android/systemui/pip/tv/PipMenuActivity_Factory;

.field private pipSnapAlgorithmProvider:Lcom/android/systemui/pip/PipSnapAlgorithm_Factory;

.field private pipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSurfaceTransactionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private pipTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private pipUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipUI;",
            ">;"
        }
    .end annotation
.end field

.field private pluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private powerNotificationWarningsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerNotificationWarnings;",
            ">;"
        }
    .end annotation
.end field

.field private powerUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerUI;",
            ">;"
        }
    .end annotation
.end field

.field private preparationCoordinatorLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;

.field private preparationCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private protoTracerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessibilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideAlarmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideAlwaysOnDisplayPolicyProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;

.field private provideAmbientDisplayConfigurationProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

.field private provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

.field private provideAssistHandleViewControllerProvider:Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;

.field private provideAssistUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;"
        }
    .end annotation
.end field

.field private provideAudioManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundRepeatableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/RepeatableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBatteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

.field private provideBgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideBroadcastDispatcherLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideCommandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private provideCommonNotifCollectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectivityManagagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideContentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private provideCurrentUserContextTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/CurrentUserContextTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideDataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDelayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideDevicePolicyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisplayIdProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

.field private provideDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private provideDividerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;"
        }
    .end annotation
.end field

.field private provideDozeLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;"
        }
    .end annotation
.end field

.field private provideIActivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIBatteryStatsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/IBatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private provideIDreamManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/service/dreams/IDreamManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideINotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIPackageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/IPackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIStatusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field private provideIWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLatencyTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/LatencyTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideLauncherAppsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakReportEmailProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

.field private provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideLongRunningExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideLongRunningLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainDelayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

.field private provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

.field private provideMediaRouter2ManagerProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideMediaRouter2ManagerFactory;

.field private provideMetricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNavigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private provideNetworkScoreManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/NetworkScoreManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotifRemoteViewCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationBlockingHelperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationMessagingUtilProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

.field private provideNotificationPanelLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationSectionLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationsLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private providePackageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePackageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private providePluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePowerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideQuickSettingsLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideRecentsImplProvider:Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;

.field private provideRecentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field private provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

.field private provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSharePreferencesProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

.field private provideShortcutManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/ShortcutManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSmartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field private provideStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private provideSysUiStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private provideSystemClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private provideTelecomManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/telecom/TelecomManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideTelephonyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideTimeTickHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideTrustManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/trust/TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideUiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideVibratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field private provideVisualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideWallpaperManagerProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideWallpaperManagerFactory;

.field private provideWifiManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private providerLayoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private providesBroadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private providesChoreographerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private providesControlsFeatureEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesViewMediatorCallbackProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

.field private proximityCheckProvider:Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;

.field private proximitySensorProvider:Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

.field private pulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private qSFactoryImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private qSLoggerProvider:Lcom/android/systemui/qs/logging/QSLogger_Factory;

.field private qSTileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field private rankingCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private recordingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;"
        }
    .end annotation
.end field

.field private recordingServiceProvider:Lcom/android/systemui/screenrecord/RecordingService_Factory;

.field private remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field private remoteInputUriControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            ">;"
        }
    .end annotation
.end field

.field private ringerModeTrackerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/RingerModeTrackerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

.field private rowContentBindStageLoggerProvider:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;

.field private rowContentBindStageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;"
        }
    .end annotation
.end field

.field private screenDecorationsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ScreenDecorations;",
            ">;"
        }
    .end annotation
.end field

.field private screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private screenPinningRequestProvider:Lcom/android/systemui/recents/ScreenPinningRequest_Factory;

.field private screenRecordDialogProvider:Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;

.field private screenRecordTileProvider:Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;

.field private screenshotNotificationsControllerProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;

.field private scrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            ">;"
        }
    .end annotation
.end field

.field private securityControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private seekBarViewModelProvider:Lcom/android/systemui/media/SeekBarViewModel_Factory;

.field private sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$Service;",
            ">;"
        }
    .end annotation
.end field

.field private shadeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private shadeListBuilderLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;

.field private shadeListBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sharedCoordinatorLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger_Factory;

.field private shortcutKeyDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private sizeCompatModeActivityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SizeCompatModeActivityController;",
            ">;"
        }
    .end annotation
.end field

.field private sliceBroadcastRelayHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SliceBroadcastRelayHandler;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyConstantsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarIconControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarNotificationActivityStarterLoggerProvider:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger_Factory;

.field private statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarStateControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private superStatusBarViewFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private systemActionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/SystemActions;",
            ">;"
        }
    .end annotation
.end field

.field private systemUIAuxiliaryDumpServiceProvider:Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;

.field private systemUIServiceProvider:Lcom/android/systemui/SystemUIService_Factory;

.field private systemWindowsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;"
        }
    .end annotation
.end field

.field private sysuiColorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private takeScreenshotServiceProvider:Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

.field private targetSdkResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;",
            ">;"
        }
    .end annotation
.end field

.field private themeOverlayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/theme/ThemeOverlayController;",
            ">;"
        }
    .end annotation
.end field

.field private toastUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/toast/ToastUI;",
            ">;"
        }
    .end annotation
.end field

.field private transactionPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/TransactionPool;",
            ">;"
        }
    .end annotation
.end field

.field private tunablePaddingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation
.end field

.field private tunerServiceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private tvPipComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private tvStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/tv/TvStatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private tvSystemUIRootComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tv/TvSystemUIRootComponent;",
            ">;"
        }
    .end annotation
.end field

.field private uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

.field private uiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field

.field private usbDebuggingActivityProvider:Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;

.field private usbDebuggingSecondaryUserActivityProvider:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;

.field private userInfoControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private userSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field private userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

.field private vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDialogComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeDialogComponent;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDialogControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeDialogControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private volumeUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeUI;",
            ">;"
        }
    .end annotation
.end field

.field private wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

.field private windowMagnificationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/WindowMagnification;",
            ">;"
        }
    .end annotation
.end field

.field private workLockActivityProvider:Lcom/android/systemui/keyguard/WorkLockActivity_Factory;

.field private workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

.field private zenModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 801
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V
    .locals 0

    .line 1670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->initialize(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V

    .line 1672
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->initialize2(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V

    .line 1673
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->initialize3(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V

    .line 1674
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->initialize4(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V

    .line 1675
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->initialize5(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    .line 797
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V

    return-void
.end method

.method private static absentJdkOptionalProvider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 4175
    sget-object v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTimeTickHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideRecentsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemWindowsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->displayImeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->protoTracerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/content/Context;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$12500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/content/res/Resources;
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->getMainResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$12600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/os/Handler;
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$12700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemActionsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/os/Handler;
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$12900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->peopleHubViewAdapterImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->getNotificationSectionsFeatureManager()Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$13600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationSectionsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$13800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/qs/logging/QSLogger;
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->getQSLogger()Lcom/android/systemui/qs/logging/QSLogger;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$15100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/media/MediaHost;
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->getMediaHost()Lcom/android/systemui/media/MediaHost;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$15400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeLogProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDisplayIdProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    return-object p0
.end method

.method public static builder()Lcom/android/systemui/tv/TvSystemUIRootComponent$Builder;
    .locals 2

    .line 1679
    new-instance v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V

    return-object v0
.end method

.method private getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    .line 1688
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 1689
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    .line 1688
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;->proxyProvideBgHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private getMainExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1713
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;->proxyProvideMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method private getMainHandler()Landroid/os/Handler;
    .locals 0

    .line 1684
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->proxyProvideMainLooper()Landroid/os/Looper;

    move-result-object p0

    .line 1683
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;->proxyProvideMainHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private getMainResources()Landroid/content/res/Resources;
    .locals 0

    .line 1693
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;->proxyProvideResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method private getMediaHost()Lcom/android/systemui/media/MediaHost;
    .locals 4

    .line 1705
    new-instance v0, Lcom/android/systemui/media/MediaHost;

    new-instance v1, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-direct {v1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 1707
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaDataFilterProvider:Ljavax/inject/Provider;

    .line 1708
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaDataFilter;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    .line 1709
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/media/MediaHost;-><init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/media/MediaHostStatesManager;)V

    return-object v0
.end method

.method private getNotificationSectionsFeatureManager()Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
    .locals 2

    .line 1697
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    new-instance v1, Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-direct {v1}, Lcom/android/systemui/util/DeviceConfigProxy;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;-><init>(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;)V

    return-object v0
.end method

.method private getQSLogger()Lcom/android/systemui/qs/logging/QSLogger;
    .locals 1

    .line 1701
    new-instance v0, Lcom/android/systemui/qs/logging/QSLogger;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideQuickSettingsLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/logging/QSLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0
.end method

.method private initialize(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V
    .locals 12

    .line 1718
    invoke-static {}, Lcom/android/systemui/dump/DumpManager_Factory;->create()Lcom/android/systemui/dump/DumpManager_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1720
    invoke-static {v0}, Lcom/android/systemui/BootCompleteCacheImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/BootCompleteCacheImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    .line 1721
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1725
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1724
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideConfigurationControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideConfigurationControllerFactory;

    move-result-object v0

    .line 1723
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 1727
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 1730
    invoke-static {v0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundExecutorFactory;

    move-result-object v0

    .line 1729
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1731
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1733
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideContentResolverFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideContentResolverFactory;

    move-result-object v0

    .line 1732
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    .line 1738
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v1

    .line 1736
    invoke-static {v0, v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;

    move-result-object v0

    .line 1735
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    .line 1739
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1741
    invoke-static {v0, v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideBroadcastDispatcherLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideBroadcastDispatcherLogBufferFactory;

    move-result-object v0

    .line 1740
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBroadcastDispatcherLogBufferProvider:Ljavax/inject/Provider;

    .line 1744
    invoke-static {v0}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->broadcastDispatcherLoggerProvider:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;

    .line 1748
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->broadcastDispatcherLoggerProvider:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;

    .line 1747
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;

    move-result-object v0

    .line 1746
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1755
    invoke-static {v0}, Lcom/android/systemui/keyguard/WorkLockActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/WorkLockActivity_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->workLockActivityProvider:Lcom/android/systemui/keyguard/WorkLockActivity_Factory;

    .line 1756
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1757
    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDialog_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/settings/BrightnessDialog_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->brightnessDialogProvider:Lcom/android/systemui/settings/BrightnessDialog_Factory;

    .line 1758
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1760
    invoke-static {v0}, Lcom/android/systemui/screenrecord/RecordingController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/screenrecord/RecordingController_Factory;

    move-result-object v0

    .line 1759
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    .line 1761
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1763
    invoke-static {v0, v1}, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideCurrentUserContextTrackerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/settings/dagger/SettingsModule_ProvideCurrentUserContextTrackerFactory;

    move-result-object v0

    .line 1762
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCurrentUserContextTrackerProvider:Ljavax/inject/Provider;

    .line 1765
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    .line 1766
    invoke-static {v1, v0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenRecordDialogProvider:Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;

    .line 1768
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1770
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideWindowManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideWindowManagerFactory;

    move-result-object v0

    .line 1769
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 1772
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIActivityManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIActivityManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    .line 1773
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1774
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    .line 1777
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1776
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAmbientDisplayConfigurationProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

    .line 1780
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1779
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAlwaysOnDisplayPolicyProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;

    .line 1781
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1783
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvidePowerManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvidePowerManagerFactory;

    move-result-object v0

    .line 1782
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    .line 1786
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v0

    .line 1785
    invoke-static {v0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 1789
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;

    move-result-object v0

    .line 1788
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 1790
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1792
    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunerServiceImpl_Factory;

    move-result-object v0

    .line 1791
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 1797
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAmbientDisplayConfigurationProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAlwaysOnDisplayPolicyProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    .line 1799
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;

    move-result-object v0

    .line 1798
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 1806
    invoke-static {}, Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;->create()Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 1809
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    move-result-object v0

    .line 1808
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1813
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1812
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidePluginManagerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidePluginManagerFactory;

    move-result-object v0

    .line 1811
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 1814
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1815
    invoke-static {v0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    .line 1819
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 1818
    invoke-static {v0, v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;

    move-result-object v0

    .line 1817
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 1820
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 1822
    invoke-static {v0, v1}, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;

    move-result-object v0

    .line 1821
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 1823
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    .line 1824
    invoke-static {v1, v0}, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    .line 1825
    invoke-static {}, Lcom/android/systemui/dock/DockManagerImpl_Factory;->create()Lcom/android/systemui/dock/DockManagerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 1826
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1828
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAudioManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideAudioManagerFactory;

    move-result-object v0

    .line 1827
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    .line 1829
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1831
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/RingerModeTrackerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/RingerModeTrackerImpl_Factory;

    move-result-object v0

    .line 1830
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    .line 1837
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1836
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    .line 1838
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1842
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    .line 1840
    invoke-static/range {v1 .. v8}, Lcom/android/keyguard/KeyguardUpdateMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardUpdateMonitor_Factory;

    move-result-object v0

    .line 1839
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 1850
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideUiBackgroundExecutorFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideUiBackgroundExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1851
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    .line 1859
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1853
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;

    move-result-object v0

    .line 1852
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 1865
    new-instance v0, Ldagger/internal/DelegateFactory;

    invoke-direct {v0}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 1868
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 1867
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesViewMediatorCallbackProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1871
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;

    move-result-object v0

    .line 1870
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 1873
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1875
    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;

    move-result-object v0

    .line 1874
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 1880
    new-instance v0, Ldagger/internal/DelegateFactory;

    invoke-direct {v0}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 1881
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    .line 1883
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl_Factory;

    move-result-object v0

    .line 1882
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1885
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1886
    invoke-static {v0}, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/FeatureFlags_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 1887
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1889
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNotificationManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideNotificationManagerFactory;

    move-result-object v0

    .line 1888
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    .line 1890
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 1892
    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationListenerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationListenerFactory;

    move-result-object v0

    .line 1891
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 1894
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1896
    invoke-static {v0, v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;

    move-result-object v0

    .line 1895
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 1899
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationEntryManagerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

    .line 1900
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 1902
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;

    move-result-object v0

    .line 1901
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    .line 1910
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary_Factory;

    move-result-object v0

    .line 1909
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;

    .line 1912
    new-instance v0, Ldagger/internal/DelegateFactory;

    invoke-direct {v0}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 1913
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;

    .line 1915
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl_Factory;

    move-result-object v0

    .line 1914
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    .line 1918
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 1920
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1922
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;

    move-result-object v0

    .line 1921
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 1925
    invoke-virtual {v1, v0}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 1926
    new-instance v0, Ldagger/internal/DelegateFactory;

    invoke-direct {v0}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 1927
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1929
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideDevicePolicyManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideDevicePolicyManagerFactory;

    move-result-object v0

    .line 1928
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    .line 1930
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1932
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideUserManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideUserManagerFactory;

    move-result-object v0

    .line 1931
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    .line 1934
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIStatusBarServiceFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIStatusBarServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 1935
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    .line 1937
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationClickNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationClickNotifier_Factory;

    move-result-object v0

    .line 1936
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    .line 1939
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1941
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideKeyguardManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideKeyguardManagerFactory;

    move-result-object v0

    .line 1940
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    .line 1942
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v9, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1944
    invoke-static/range {v1 .. v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl_Factory;

    move-result-object v0

    .line 1943
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 1955
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1957
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController_Factory;

    move-result-object v0

    .line 1956
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 1964
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 1966
    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;

    move-result-object v0

    .line 1965
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 1972
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/media/MediaFeatureFlag_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaFeatureFlag_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaFeatureFlagProvider:Lcom/android/systemui/media/MediaFeatureFlag_Factory;

    .line 1973
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1975
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;

    move-result-object v0

    .line 1974
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    .line 1979
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1978
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationSectionsFeatureManagerProvider:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

    .line 1980
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 1982
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;

    move-result-object v0

    .line 1981
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->highPriorityProvider:Ljavax/inject/Provider;

    .line 1985
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationEntryManagerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationSectionsFeatureManagerProvider:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

    iget-object v7, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    .line 1986
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationRankingManagerProvider:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;

    .line 1996
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    .line 1999
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1998
    invoke-static {p1, v0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMessagingUtilProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

    .line 2000
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 2001
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    .line 2003
    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideSmartReplyControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideSmartReplyControllerFactory;

    move-result-object p1

    .line 2002
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    .line 2007
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 2008
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 2010
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputUriController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RemoteInputUriController_Factory;

    move-result-object p1

    .line 2009
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    .line 2011
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2013
    invoke-static {p1, v0}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotifInteractionLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotifInteractionLogBufferFactory;

    move-result-object p1

    .line 2012
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    .line 2016
    invoke-static {p1}, Lcom/android/systemui/statusbar/ActionClickLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->actionClickLoggerProvider:Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

    .line 2017
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 2026
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->actionClickLoggerProvider:Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

    .line 2019
    invoke-static/range {v0 .. v9}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;

    move-result-object p1

    .line 2018
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 2031
    invoke-static {}, Lcom/android/systemui/util/time/SystemClockImpl_Factory;->create()Lcom/android/systemui/util/time/SystemClockImpl_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 2032
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2033
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCollectionLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;

    .line 2034
    invoke-static {}, Lcom/android/systemui/util/io/Files_Factory;->create()Lcom/android/systemui/util/io/Files_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->filesProvider:Ljavax/inject/Provider;

    .line 2035
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 2037
    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/dump/LogBufferEulogizer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/LogBufferEulogizer_Factory;

    move-result-object p1

    .line 2036
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->logBufferEulogizerProvider:Ljavax/inject/Provider;

    .line 2039
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCollectionLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2041
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;

    move-result-object p1

    .line 2040
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 2048
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2049
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeListBuilderLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;

    .line 2050
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 2052
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/NotificationInteractionTracker_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationInteractionTracker_Factory;

    move-result-object p1

    .line 2051
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationInteractionTrackerProvider:Ljavax/inject/Provider;

    .line 2054
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeListBuilderLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2056
    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder_Factory;

    move-result-object p1

    .line 2055
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeListBuilderProvider:Ljavax/inject/Provider;

    .line 2061
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 2063
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline_Factory;

    move-result-object p1

    .line 2062
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    .line 2064
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 2066
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;

    move-result-object p1

    .line 2065
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    .line 2070
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2071
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifBindPipelineLoggerProvider:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger_Factory;

    .line 2072
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    .line 2077
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v1

    .line 2074
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline_Factory;

    move-result-object p1

    .line 2073
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifBindPipelineProvider:Ljavax/inject/Provider;

    .line 2078
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    .line 2079
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifRemoteViewCacheImplProvider:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;

    .line 2081
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotifRemoteViewCacheProvider:Ljavax/inject/Provider;

    .line 2082
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2085
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v1

    .line 2084
    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;

    move-result-object p1

    .line 2083
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    .line 2086
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2088
    invoke-static {p1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLauncherAppsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideLauncherAppsFactory;

    move-result-object p1

    .line 2087
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 2089
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2091
    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/ConversationNotificationManager_Factory;

    move-result-object p1

    .line 2090
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    .line 2096
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 2097
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor_Factory;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->conversationNotificationProcessorProvider:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor_Factory;

    .line 2099
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotifRemoteViewCacheProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 2101
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater_Factory;

    move-result-object p1

    .line 2100
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationContentInflaterProvider:Ljavax/inject/Provider;

    .line 2109
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;->create()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    .line 2110
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2111
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rowContentBindStageLoggerProvider:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;

    return-void
.end method

.method private initialize2(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2116
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationContentInflaterProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rowContentBindStageLoggerProvider:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;

    .line 2118
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;

    move-result-object v1

    .line 2117
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2123
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    .line 2125
    invoke-static {}, Lcom/android/systemui/power/EnhancedEstimatesImpl_Factory;->create()Lcom/android/systemui/power/EnhancedEstimatesImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    .line 2126
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 2127
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    .line 2128
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2130
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideBatteryControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideBatteryControllerFactory;

    move-result-object v1

    .line 2129
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 2137
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAmbientDisplayConfigurationProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2139
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl_Factory;

    move-result-object v1

    .line 2138
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    .line 2149
    new-instance v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    .line 2156
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/icon/IconBuilder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/icon/IconBuilder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->iconBuilderProvider:Lcom/android/systemui/statusbar/notification/icon/IconBuilder_Factory;

    .line 2157
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 2158
    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->iconManagerProvider:Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;

    .line 2160
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2162
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;

    move-result-object v1

    .line 2161
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    .line 2166
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMessagingUtilProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifBindPipelineProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    .line 2176
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask_Factory;->create()Lcom/android/systemui/statusbar/notification/row/RowInflaterTask_Factory;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->iconManagerProvider:Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    .line 2168
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;

    move-result-object v1

    .line 2167
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationRowBinderImplProvider:Ljavax/inject/Provider;

    .line 2183
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2182
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController_Factory;

    move-result-object v1

    .line 2181
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;

    .line 2184
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 2186
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationEntryManagerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationRankingManagerProvider:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationRowBinderImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 2188
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationEntryManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationEntryManagerFactory;

    move-result-object v2

    .line 2187
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 2198
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 2200
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2201
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->targetSdkResolverProvider:Ljavax/inject/Provider;

    .line 2205
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v1

    .line 2204
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainDelayableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainDelayableExecutorFactory;

    move-result-object v1

    .line 2203
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 2206
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2207
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->groupCoalescerLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger_Factory;

    .line 2208
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 2209
    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->groupCoalescerProvider:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;

    .line 2213
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2214
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sharedCoordinatorLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger_Factory;

    .line 2215
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 2216
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->hideNotifsForOtherUsersCoordinatorProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;

    .line 2219
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2223
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->highPriorityProvider:Ljavax/inject/Provider;

    .line 2221
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator_Factory;

    move-result-object v1

    .line 2220
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardCoordinatorProvider:Ljavax/inject/Provider;

    .line 2230
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 2232
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;

    move-result-object v1

    .line 2231
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rankingCoordinatorProvider:Ljavax/inject/Provider;

    .line 2233
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2235
    invoke-static {v1, v2, v3}, Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;

    move-result-object v1

    .line 2234
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    .line 2237
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2239
    invoke-static {v2, v1, v3}, Lcom/android/systemui/ForegroundServiceController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceController_Factory;

    move-result-object v1

    .line 2238
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 2243
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 2245
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;

    move-result-object v1

    .line 2244
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->appOpsCoordinatorProvider:Ljavax/inject/Provider;

    .line 2250
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIPackageManagerProvider:Ljavax/inject/Provider;

    .line 2251
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 2253
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator_Factory;

    move-result-object v1

    .line 2252
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

    .line 2256
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    .line 2257
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 2259
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator_Factory;

    move-result-object v1

    .line 2258
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bubbleCoordinatorProvider:Ljavax/inject/Provider;

    .line 2260
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMessagingUtilProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2262
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;

    move-result-object v1

    .line 2261
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    .line 2264
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 2266
    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;

    move-result-object v1

    .line 2265
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->headsUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 2272
    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator_Factory;->create()Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->conversationCoordinatorProvider:Ljavax/inject/Provider;

    .line 2273
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2274
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->preparationCoordinatorLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;

    .line 2275
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    .line 2277
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl_Factory;

    move-result-object v1

    .line 2276
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifInflaterImplProvider:Ljavax/inject/Provider;

    .line 2282
    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn_Factory;->create()Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifViewBarnProvider:Ljavax/inject/Provider;

    .line 2283
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->preparationCoordinatorLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifInflaterImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 2285
    invoke-static {v2, v3, v4, v1, v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;

    move-result-object v1

    .line 2284
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->preparationCoordinatorProvider:Ljavax/inject/Provider;

    .line 2291
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaFeatureFlagProvider:Lcom/android/systemui/media/MediaFeatureFlag_Factory;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator_Factory;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaCoordinatorProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator_Factory;

    .line 2292
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->hideNotifsForOtherUsersCoordinatorProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rankingCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->appOpsCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bubbleCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->headsUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->conversationCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->preparationCoordinatorProvider:Ljavax/inject/Provider;

    .line 2294
    invoke-static/range {v2 .. v13}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators_Factory;

    move-result-object v1

    .line 2293
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCoordinatorsProvider:Ljavax/inject/Provider;

    .line 2307
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 2311
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    move-result-object v2

    .line 2309
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideVisualStabilityManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideVisualStabilityManagerFactory;

    move-result-object v1

    .line 2308
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 2312
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifViewBarnProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 2314
    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;

    move-result-object v1

    .line 2313
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifViewManagerProvider:Ljavax/inject/Provider;

    .line 2318
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->groupCoalescerProvider:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeListBuilderProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCoordinatorsProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifInflaterImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 2320
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;

    move-result-object v1

    .line 2319
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifPipelineInitializerProvider:Ljavax/inject/Provider;

    .line 2330
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifBindPipelineProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2331
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifBindPipelineInitializerProvider:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;

    .line 2333
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2336
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideNotificationGroupAlertTransferHelperFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideNotificationGroupAlertTransferHelperFactory;

    move-result-object v1

    .line 2334
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    .line 2337
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 2339
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController_Factory;

    move-result-object v1

    .line 2338
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->headsUpControllerProvider:Ljavax/inject/Provider;

    .line 2347
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    .line 2348
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationClickerLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationClickerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger_Factory;

    .line 2349
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    .line 2350
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->builderProvider:Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;

    .line 2352
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->targetSdkResolverProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifPipelineInitializerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifBindPipelineInitializerProvider:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationRowBinderImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->headsUpControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    .line 2354
    invoke-static/range {v3 .. v18}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;

    move-result-object v1

    .line 2353
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationsControllerImplProvider:Ljavax/inject/Provider;

    .line 2371
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 2372
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationsControllerStubProvider:Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub_Factory;

    .line 2373
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationsControllerImplProvider:Ljavax/inject/Provider;

    .line 2375
    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;

    move-result-object v1

    .line 2374
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationsControllerProvider:Ljavax/inject/Provider;

    .line 2379
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2380
    invoke-static {v1, v2}, Lcom/android/systemui/tracing/ProtoTracer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tracing/ProtoTracer_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->protoTracerProvider:Ljavax/inject/Provider;

    .line 2381
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2383
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideCommandQueueFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideCommandQueueFactory;

    move-result-object v1

    .line 2382
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2385
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2387
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;

    move-result-object v1

    .line 2386
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 2388
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 2390
    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/LightBarController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LightBarController_Factory;

    move-result-object v1

    .line 2389
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    .line 2396
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2400
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2399
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;

    move-result-object v1

    .line 2398
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    .line 2404
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2406
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;

    move-result-object v1

    .line 2405
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    .line 2408
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 2410
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;

    move-result-object v1

    .line 2409
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 2415
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationSectionsFeatureManagerProvider:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

    .line 2417
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;

    move-result-object v1

    .line 2416
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    .line 2419
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 2421
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;

    move-result-object v1

    .line 2420
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 2429
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 2431
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;

    move-result-object v1

    .line 2430
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 2435
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 2437
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier_Factory;

    move-result-object v1

    .line 2436
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    .line 2446
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2448
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;

    move-result-object v1

    .line 2447
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    .line 2452
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2454
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAccessibilityManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideAccessibilityManagerFactory;

    move-result-object v1

    .line 2453
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    .line 2458
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    .line 2457
    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideINotificationManagerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideINotificationManagerFactory;

    move-result-object v1

    .line 2456
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 2459
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2461
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideShortcutManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideShortcutManagerFactory;

    move-result-object v1

    .line 2460
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideShortcutManagerProvider:Ljavax/inject/Provider;

    .line 2462
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 2467
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog_Builder_Factory;->create()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog_Builder_Factory;

    move-result-object v3

    .line 2464
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;

    move-result-object v1

    .line 2463
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    .line 2468
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->highPriorityProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideShortcutManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCurrentUserContextTrackerProvider:Ljavax/inject/Provider;

    .line 2483
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController_Builder_Factory;->create()Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController_Builder_Factory;

    move-result-object v14

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    .line 2470
    invoke-static/range {v2 .. v16}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationGutsManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationGutsManagerFactory;

    move-result-object v1

    .line 2469
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 2486
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 2487
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 2489
    invoke-static {}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;->create()Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationPanelLoggerProvider:Ljavax/inject/Provider;

    .line 2490
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 2492
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;

    move-result-object v1

    .line 2491
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    .line 2499
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;

    .line 2501
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController_Factory;

    move-result-object v1

    .line 2500
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;

    .line 2504
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2505
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/DynamicChildBindController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicChildBindController_Factory;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dynamicChildBindControllerProvider:Lcom/android/systemui/statusbar/notification/DynamicChildBindController_Factory;

    .line 2506
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    .line 2508
    invoke-static/range {v2 .. v14}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;

    move-result-object v1

    .line 2507
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 2524
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideMetricsLoggerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideMetricsLoggerFactory;

    move-result-object v1

    .line 2523
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 2525
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 2526
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$PresentJdkOptionalLazyProvider;->access$400(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    .line 2529
    invoke-static {v1}, Lcom/android/systemui/ActivityStarterDelegate_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/ActivityStarterDelegate_Factory;

    move-result-object v1

    .line 2528
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 2530
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 2532
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;

    move-result-object v1

    .line 2531
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 2539
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2541
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideConnectivityManagagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideConnectivityManagagerFactory;

    move-result-object v1

    .line 2540
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    .line 2542
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2544
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideTelephonyManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideTelephonyManagerFactory;

    move-result-object v1

    .line 2543
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    .line 2545
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2547
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideWifiManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideWifiManagerFactory;

    move-result-object v1

    .line 2546
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    .line 2548
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2550
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;

    move-result-object v1

    .line 2549
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNetworkScoreManagerProvider:Ljavax/inject/Provider;

    .line 2551
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    .line 2553
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;

    move-result-object v1

    .line 2552
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 2562
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 2564
    invoke-static {v1, v2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;

    move-result-object v1

    .line 2563
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    .line 2566
    invoke-static {}, Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;->create()Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 2567
    invoke-static {}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->create()Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 2568
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2569
    invoke-static {v1}, Lcom/android/systemui/statusbar/VibratorHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/VibratorHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    .line 2573
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2572
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;

    move-result-object v1

    .line 2571
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    .line 2577
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2578
    invoke-static {v1}, Lcom/android/systemui/assist/AssistModule_ProvideAssistUtilsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistUtilsFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    .line 2580
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;->create()Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    .line 2581
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    .line 2582
    invoke-static {v1}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAssistHandleViewControllerProvider:Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;

    .line 2584
    invoke-static {}, Lcom/android/systemui/assist/DeviceConfigHelper_Factory;->create()Lcom/android/systemui/assist/DeviceConfigHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    .line 2586
    invoke-static {}, Lcom/android/systemui/assist/AssistHandleOffBehavior_Factory;->create()Lcom/android/systemui/assist/AssistHandleOffBehavior_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

    .line 2588
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;->create()Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    .line 2589
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 2591
    invoke-static {v2, v3, v1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;

    move-result-object v1

    .line 2590
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

    .line 2596
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;->create()Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSystemClockProvider:Ljavax/inject/Provider;

    .line 2600
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    .line 2599
    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;

    move-result-object v1

    .line 2598
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 2601
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/pip/PipSnapAlgorithm_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipSnapAlgorithm_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipSnapAlgorithmProvider:Lcom/android/systemui/pip/PipSnapAlgorithm_Factory;

    .line 2602
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2604
    invoke-static {v1, v2, v3}, Lcom/android/systemui/wm/DisplayController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wm/DisplayController_Factory;

    move-result-object v1

    .line 2603
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    .line 2606
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipSnapAlgorithmProvider:Lcom/android/systemui/pip/PipSnapAlgorithm_Factory;

    .line 2608
    invoke-static {v2, v3, v1}, Lcom/android/systemui/pip/PipBoundsHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipBoundsHandler_Factory;

    move-result-object v1

    .line 2607
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipBoundsHandlerProvider:Ljavax/inject/Provider;

    .line 2610
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 2612
    invoke-static {v1, v2}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper_Factory;

    move-result-object v1

    .line 2611
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 2614
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize3(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V
    .locals 79

    move-object/from16 v0, p0

    .line 2619
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    .line 2620
    invoke-static {v1, v2}, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideRecentsImplProvider:Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;

    .line 2622
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2624
    invoke-static {v2, v1, v3}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;

    move-result-object v1

    .line 2623
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideRecentsProvider:Ljavax/inject/Provider;

    .line 2627
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$PresentJdkOptionalLazyProvider;->access$400(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfLazyOfRecentsProvider:Ljavax/inject/Provider;

    .line 2628
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2630
    invoke-static {v1, v2, v3}, Lcom/android/systemui/wm/SystemWindows_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wm/SystemWindows_Factory;

    move-result-object v1

    .line 2629
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemWindowsProvider:Ljavax/inject/Provider;

    .line 2632
    invoke-static {}, Lcom/android/systemui/TransactionPool_Factory;->create()Lcom/android/systemui/TransactionPool_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->transactionPoolProvider:Ljavax/inject/Provider;

    .line 2633
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemWindowsProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2635
    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/wm/DisplayImeController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wm/DisplayImeController_Factory;

    move-result-object v1

    .line 2634
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->displayImeControllerProvider:Ljavax/inject/Provider;

    .line 2640
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfLazyOfRecentsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemWindowsProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->transactionPoolProvider:Ljavax/inject/Provider;

    .line 2642
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;

    move-result-object v1

    .line 2641
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    .line 2651
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 2652
    invoke-static {v1, v2}, Lcom/android/systemui/pip/PipAnimationController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipAnimationController_Factory;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipAnimationControllerProvider:Lcom/android/systemui/pip/PipAnimationController_Factory;

    .line 2653
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    .line 2655
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/pip/PipTaskOrganizer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipTaskOrganizer_Factory;

    move-result-object v1

    .line 2654
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 2662
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    .line 2664
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/pip/tv/PipManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/tv/PipManager_Factory;

    move-result-object v1

    .line 2663
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipManagerProvider:Ljavax/inject/Provider;

    .line 2671
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2673
    invoke-static {v2, v3, v1}, Lcom/android/systemui/pip/PipUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipUI_Factory;

    move-result-object v1

    .line 2672
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipUIProvider:Ljavax/inject/Provider;

    .line 2675
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$PresentJdkOptionalInstanceProvider;->access$500(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfDividerProvider:Ljavax/inject/Provider;

    .line 2676
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipUIProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 2678
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/recents/OverviewProxyService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyService_Factory;

    move-result-object v1

    .line 2677
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 2690
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvidePackageManagerWrapperFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvidePackageManagerWrapperFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 2691
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSystemClockProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    .line 2693
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;

    move-result-object v1

    .line 2692
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

    .line 2705
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

    .line 2707
    invoke-static {v2, v3, v1}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;

    move-result-object v1

    .line 2706
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

    .line 2711
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAssistHandleViewControllerProvider:Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2713
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;

    move-result-object v1

    .line 2712
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    .line 2723
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    .line 2725
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/assist/PhoneStateMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/PhoneStateMonitor_Factory;

    move-result-object v1

    .line 2724
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    .line 2730
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    .line 2732
    invoke-static {v2, v3, v4, v1, v5}, Lcom/android/systemui/assist/AssistLogger_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistLogger_Factory;

    move-result-object v1

    .line 2731
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistLoggerProvider:Ljavax/inject/Provider;

    .line 2738
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2740
    invoke-static {v2, v1}, Lcom/android/systemui/assist/ui/DefaultUiController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/ui/DefaultUiController_Factory;

    move-result-object v1

    .line 2739
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->defaultUiControllerProvider:Ljavax/inject/Provider;

    .line 2741
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistLoggerProvider:Ljavax/inject/Provider;

    .line 2743
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/assist/AssistManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistManager_Factory;

    move-result-object v1

    .line 2742
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    .line 2756
    invoke-static {}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;->create()Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    .line 2757
    new-instance v5, Ldagger/internal/DelegateFactory;

    invoke-direct {v5}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 2758
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    .line 2760
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ShadeControllerImpl_Factory;

    move-result-object v1

    .line 2759
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    .line 2769
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2770
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    .line 2771
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->builderProvider2:Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;

    .line 2773
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIBatteryStatsProvider:Ljavax/inject/Provider;

    .line 2774
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->builderProvider2:Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    .line 2776
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/statusbar/KeyguardIndicationController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/KeyguardIndicationController_Factory;

    move-result-object v1

    .line 2775
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    .line 2787
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 2789
    invoke-static/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LockscreenLockIconController_Factory;

    move-result-object v1

    .line 2788
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lockscreenLockIconControllerProvider:Ljavax/inject/Provider;

    .line 2804
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2806
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAlarmManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideAlarmManagerFactory;

    move-result-object v1

    .line 2805
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 2807
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->builderProvider3:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

    .line 2808
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2810
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BlurUtils_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/BlurUtils_Factory;

    move-result-object v1

    .line 2809
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->blurUtilsProvider:Ljavax/inject/Provider;

    .line 2811
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->builderProvider3:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

    .line 2819
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->blurUtilsProvider:Ljavax/inject/Provider;

    .line 2813
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/statusbar/phone/ScrimController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ScrimController_Factory;

    move-result-object v1

    .line 2812
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->scrimControllerProvider:Ljavax/inject/Provider;

    .line 2824
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2826
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;

    move-result-object v1

    .line 2825
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;

    .line 2832
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2833
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideWallpaperManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideWallpaperManagerFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWallpaperManagerProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideWallpaperManagerFactory;

    .line 2838
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2836
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;

    move-result-object v1

    .line 2835
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lockscreenWallpaperProvider:Ljavax/inject/Provider;

    .line 2843
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2845
    invoke-static {v1, v2}, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;

    move-result-object v1

    .line 2844
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDozeLogBufferProvider:Ljavax/inject/Provider;

    .line 2847
    invoke-static {v1}, Lcom/android/systemui/doze/DozeLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeLoggerProvider:Lcom/android/systemui/doze/DozeLogger_Factory;

    .line 2848
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2850
    invoke-static {v2, v3, v1}, Lcom/android/systemui/doze/DozeLog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeLog_Factory;

    move-result-object v1

    .line 2849
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeLogProvider:Ljavax/inject/Provider;

    .line 2852
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 2854
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;

    move-result-object v1

    .line 2853
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    .line 2855
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->scrimControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 2866
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    .line 2857
    invoke-static/range {v2 .. v16}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController_Factory;

    move-result-object v1

    .line 2856
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object v10, v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    .line 2873
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeLogProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->scrimControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lockscreenLockIconControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    .line 2875
    invoke-static/range {v2 .. v19}, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;

    move-result-object v1

    .line 2874
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 2894
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    .line 2895
    invoke-static {v1, v2}, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/ScreenPinningRequest_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenPinningRequestProvider:Lcom/android/systemui/recents/ScreenPinningRequest_Factory;

    .line 2896
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    .line 2898
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;

    move-result-object v1

    .line 2897
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    .line 2903
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 2905
    invoke-static {v2, v3, v1}, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogComponent_Factory;

    move-result-object v1

    .line 2904
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    .line 2909
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideRecentsProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$PresentJdkOptionalInstanceProvider;->access$500(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfRecentsProvider:Ljavax/inject/Provider;

    .line 2910
    new-instance v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$2;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarComponentBuilderProvider:Ljavax/inject/Provider;

    .line 2917
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2919
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;

    move-result-object v1

    .line 2918
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    .line 2923
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->actionClickLoggerProvider:Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

    .line 2925
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;

    move-result-object v1

    .line 2924
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    .line 2936
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 2937
    invoke-static {v1}, Lcom/android/systemui/ActivityIntentHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/ActivityIntentHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityIntentHelperProvider:Ljavax/inject/Provider;

    .line 2938
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    .line 2939
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger_Factory;

    move-result-object v1

    move-object/from16 v30, v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarNotificationActivityStarterLoggerProvider:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger_Factory;

    .line 2941
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityIntentHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    .line 2943
    invoke-static/range {v2 .. v30}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;

    move-result-object v1

    .line 2942
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->builderProvider4:Ljavax/inject/Provider;

    .line 2973
    invoke-static/range {p0 .. p0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tvSystemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 2976
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController_Factory;

    move-result-object v1

    .line 2975
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    .line 2978
    new-instance v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$3;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    .line 2985
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lockscreenLockIconControllerProvider:Ljavax/inject/Provider;

    .line 2987
    invoke-static {v2, v3, v1, v4}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;

    move-result-object v1

    .line 2986
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    .line 2992
    invoke-static {}, Lcom/android/systemui/InitController_Factory;->create()Lcom/android/systemui/InitController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    .line 2995
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;

    move-result-object v1

    .line 2994
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTimeTickHandlerProvider:Ljavax/inject/Provider;

    .line 2996
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 2997
    invoke-static {v1}, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    .line 2998
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 2999
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3000
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 3001
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3002
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 3003
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    .line 3005
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;

    move-result-object v1

    .line 3004
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    .line 3007
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    .line 3009
    invoke-static {v1, v2}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;

    move-result-object v1

    .line 3008
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 3011
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 3016
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 3013
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;

    move-result-object v1

    .line 3012
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    .line 3018
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3019
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 3020
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3021
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 3025
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 3024
    invoke-static {v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDataSaverControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideDataSaverControllerFactory;

    move-result-object v1

    .line 3023
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 3026
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3028
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;

    move-result-object v1

    .line 3027
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 3030
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3034
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    .line 3032
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    move-result-object v1

    .line 3031
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    .line 3038
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3039
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    .line 3040
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3042
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideTelecomManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideTelecomManagerFactory;

    move-result-object v1

    .line 3041
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    .line 3043
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3044
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDisplayIdProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

    .line 3047
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3046
    invoke-static {v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSharePreferencesProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    .line 3048
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/util/time/DateFormatUtil_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/time/DateFormatUtil_Factory;

    move-result-object v1

    move-object/from16 v27, v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dateFormatUtilProvider:Lcom/android/systemui/util/time/DateFormatUtil_Factory;

    .line 3049
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDisplayIdProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSharePreferencesProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    .line 3050
    invoke-static/range {v2 .. v28}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->phoneStatusBarPolicyProvider:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;

    .line 3080
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesChoreographerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesChoreographerFactory;

    move-result-object v1

    .line 3079
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesChoreographerProvider:Ljavax/inject/Provider;

    .line 3081
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->blurUtilsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWallpaperManagerProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideWallpaperManagerFactory;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 3083
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/NotificationShadeDepthController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationShadeDepthController_Factory;

    move-result-object v1

    .line 3082
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    .line 3093
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 3095
    invoke-static {v1}, Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;

    move-result-object v1

    .line 3094
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    .line 3096
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 3098
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager_Factory;

    move-result-object v1

    .line 3097
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v78, v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    .line 3103
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3104
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationsControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v44, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lockscreenLockIconControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->scrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lockscreenWallpaperProvider:Ljavax/inject/Provider;

    move-object/from16 v49, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v50, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object/from16 v51, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v52, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenPinningRequestProvider:Lcom/android/systemui/recents/ScreenPinningRequest_Factory;

    move-object/from16 v53, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v54, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v55, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v56, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfRecentsProvider:Ljavax/inject/Provider;

    move-object/from16 v57, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarComponentBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v58, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v59, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfDividerProvider:Ljavax/inject/Provider;

    move-object/from16 v60, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v61, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->builderProvider4:Ljavax/inject/Provider;

    move-object/from16 v62, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v63, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v64, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v65, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesViewMediatorCallbackProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

    move-object/from16 v66, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v67, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    move-object/from16 v68, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTimeTickHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v69, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    move-object/from16 v70, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v71, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v72, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v73, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->phoneStatusBarPolicyProvider:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;

    move-object/from16 v74, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v75, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v76, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    move-object/from16 v77, v1

    .line 3106
    invoke-static/range {v2 .. v78}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;

    move-result-object v1

    .line 3105
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    move-object/from16 v2, p1

    .line 3184
    invoke-virtual {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3186
    invoke-static {}, Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;->create()Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    .line 3187
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/media/MediaControllerFactory_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaControllerFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaControllerFactoryProvider:Lcom/android/systemui/media/MediaControllerFactory_Factory;

    .line 3188
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3190
    invoke-static {v1, v2}, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaTimeoutListener_Factory;

    move-result-object v1

    .line 3189
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaTimeoutListenerProvider:Ljavax/inject/Provider;

    .line 3192
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 3194
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/media/MediaResumeListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaResumeListener_Factory;

    move-result-object v1

    .line 3193
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaResumeListenerProvider:Ljavax/inject/Provider;

    .line 3199
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaControllerFactoryProvider:Lcom/android/systemui/media/MediaControllerFactory_Factory;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaTimeoutListenerProvider:Ljavax/inject/Provider;

    .line 3201
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/media/MediaDataManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDataManager_Factory;

    move-result-object v1

    .line 3200
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 3210
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3212
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3222
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 3214
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationMediaManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationMediaManagerFactory;

    move-result-object v2

    .line 3213
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 3224
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3226
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3228
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesViewMediatorCallbackProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 3230
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager_Factory;

    move-result-object v2

    .line 3229
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 3242
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3244
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3246
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideTrustManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideTrustManagerFactory;

    move-result-object v1

    .line 3245
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTrustManagerProvider:Ljavax/inject/Provider;

    .line 3247
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3249
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 3263
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 3251
    invoke-static/range {v2 .. v14}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;

    move-result-object v2

    .line 3250
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 3265
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3266
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3268
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 3270
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController_Factory;

    move-result-object v2

    .line 3269
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 3281
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3283
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleData_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleData_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    .line 3285
    invoke-static {}, Lcom/android/systemui/util/FloatingContentCoordinator_Factory;->create()Lcom/android/systemui/util/FloatingContentCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

    .line 3286
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 3287
    invoke-static {v1}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bubbleVolatileRepositoryProvider:Ljavax/inject/Provider;

    .line 3288
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3289
    invoke-static {v1}, Lcom/android/systemui/bubbles/storage/BubblePersistentRepository_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/storage/BubblePersistentRepository_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bubblePersistentRepositoryProvider:Ljavax/inject/Provider;

    .line 3290
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bubbleVolatileRepositoryProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 3292
    invoke-static {v2, v1, v3}, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;

    move-result-object v1

    .line 3291
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v17, v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bubbleDataRepositoryProvider:Ljavax/inject/Provider;

    .line 3296
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3298
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    .line 3300
    invoke-static/range {v2 .. v22}, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;

    move-result-object v1

    .line 3299
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v2, p1

    .line 3322
    invoke-virtual {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3323
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    .line 3324
    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleOverflowActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleOverflowActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bubbleOverflowActivityProvider:Lcom/android/systemui/bubbles/BubbleOverflowActivity_Factory;

    .line 3325
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3326
    invoke-static {v1}, Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->usbDebuggingActivityProvider:Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;

    .line 3327
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3328
    invoke-static {v1}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->usbDebuggingSecondaryUserActivityProvider:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;

    return-void
.end method

.method private initialize4(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V
    .locals 34

    move-object/from16 v0, p0

    .line 3333
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 3335
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;

    move-result-object v1

    .line 3334
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideExecutorProvider:Ljavax/inject/Provider;

    .line 3336
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3338
    invoke-static {v2, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsListingControllerImpl_Factory;

    move-result-object v1

    .line 3337
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    .line 3339
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 3341
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;

    move-result-object v1

    .line 3340
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3343
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    .line 3344
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 3346
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideDelayableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideDelayableExecutorFactory;

    move-result-object v1

    .line 3345
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3347
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3348
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3349
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    .line 3350
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3352
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvidePackageManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvidePackageManagerFactory;

    move-result-object v1

    .line 3351
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 3355
    invoke-static {v1}, Lcom/android/systemui/controls/dagger/ControlsModule_ProvidesControlsFeatureEnabledFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/controls/dagger/ControlsModule_ProvidesControlsFeatureEnabledFactory;

    move-result-object v1

    .line 3354
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesControlsFeatureEnabledProvider:Ljavax/inject/Provider;

    .line 3357
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    .line 3358
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesControlsFeatureEnabledProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    .line 3360
    invoke-static {v2, v3, v1, v4}, Lcom/android/systemui/controls/dagger/ControlsComponent_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/dagger/ControlsComponent_Factory;

    move-result-object v1

    .line 3359
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v32, v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsComponentProvider:Ljavax/inject/Provider;

    .line 3365
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTrustManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCurrentUserContextTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v1

    .line 3366
    invoke-static/range {v2 .. v33}, Lcom/android/systemui/globalactions/GlobalActionsDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/globalactions/GlobalActionsDialog_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsDialogProvider:Lcom/android/systemui/globalactions/GlobalActionsDialog_Factory;

    .line 3399
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->blurUtilsProvider:Ljavax/inject/Provider;

    .line 3400
    invoke-static {v2, v3, v1, v4}, Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsImplProvider:Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;

    .line 3405
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    check-cast v2, Ldagger/internal/DelegateFactory;

    .line 3407
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 3409
    invoke-static {v3, v4, v5, v1, v6}, Lcom/android/systemui/globalactions/GlobalActionsComponent_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/globalactions/GlobalActionsComponent_Factory;

    move-result-object v1

    .line 3408
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3415
    invoke-virtual {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3416
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3418
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;

    move-result-object v1

    .line 3417
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlActionCoordinatorImplProvider:Ljavax/inject/Provider;

    .line 3425
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3427
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSharePreferencesProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    .line 3429
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/ControlsUiControllerImpl_Factory;

    move-result-object v2

    .line 3428
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    .line 3439
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3440
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    .line 3442
    invoke-static {v1, v2, v3}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl_Factory;

    move-result-object v1

    .line 3441
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsBindingControllerImplProvider:Ljavax/inject/Provider;

    .line 3446
    invoke-static {}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->absentJdkOptionalProvider()Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfControlsFavoritePersistenceWrapperProvider:Ljavax/inject/Provider;

    .line 3447
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3449
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsBindingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 3451
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/controls/controller/ControlsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/controller/ControlsControllerImpl_Factory;

    move-result-object v2

    .line 3450
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    .line 3460
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3461
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3462
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsProviderSelectorActivityProvider:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;

    .line 3469
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3470
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsFavoritingActivityProvider:Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;

    .line 3476
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3477
    invoke-static {v1, v2, v3}, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsEditingActivityProvider:Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

    .line 3481
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    .line 3482
    invoke-static {v1, v2, v3}, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsRequestDialogProvider:Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;

    .line 3486
    new-instance v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$4;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tvPipComponentBuilderProvider:Ljavax/inject/Provider;

    .line 3493
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipManagerProvider:Ljavax/inject/Provider;

    .line 3494
    invoke-static {v1, v2}, Lcom/android/systemui/pip/tv/PipMenuActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/tv/PipMenuActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipMenuActivityProvider:Lcom/android/systemui/pip/tv/PipMenuActivity_Factory;

    const/16 v1, 0xd

    .line 3496
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/tuner/TunerActivity;

    .line 3497
    invoke-static {}, Lcom/android/systemui/tuner/TunerActivity_Factory;->create()Lcom/android/systemui/tuner/TunerActivity_Factory;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/ForegroundServicesDialog;

    .line 3500
    invoke-static {}, Lcom/android/systemui/ForegroundServicesDialog_Factory;->create()Lcom/android/systemui/ForegroundServicesDialog_Factory;

    move-result-object v3

    .line 3498
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/keyguard/WorkLockActivity;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->workLockActivityProvider:Lcom/android/systemui/keyguard/WorkLockActivity_Factory;

    .line 3501
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/settings/BrightnessDialog;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->brightnessDialogProvider:Lcom/android/systemui/settings/BrightnessDialog_Factory;

    .line 3502
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenRecordDialogProvider:Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;

    .line 3503
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/bubbles/BubbleOverflowActivity;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bubbleOverflowActivityProvider:Lcom/android/systemui/bubbles/BubbleOverflowActivity_Factory;

    .line 3504
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/usb/UsbDebuggingActivity;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->usbDebuggingActivityProvider:Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;

    .line 3505
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->usbDebuggingSecondaryUserActivityProvider:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;

    .line 3506
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsProviderSelectorActivityProvider:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;

    .line 3509
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsFavoritingActivityProvider:Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;

    .line 3512
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/controls/management/ControlsEditingActivity;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsEditingActivityProvider:Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

    .line 3513
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/controls/management/ControlsRequestDialog;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->controlsRequestDialogProvider:Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;

    .line 3514
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/pip/tv/PipMenuActivity;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipMenuActivityProvider:Lcom/android/systemui/pip/tv/PipMenuActivity_Factory;

    .line 3515
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    .line 3516
    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mapOfClassOfAndProviderOfActivityProvider:Ljavax/inject/Provider;

    .line 3517
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3518
    invoke-static {v1, v2}, Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->proximityCheckProvider:Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;

    .line 3520
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeLogProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 3531
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->proximityCheckProvider:Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->builderProvider3:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    .line 3521
    invoke-static/range {v2 .. v18}, Lcom/android/systemui/doze/DozeFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeFactoryProvider:Lcom/android/systemui/doze/DozeFactory_Factory;

    .line 3539
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 3540
    invoke-static {v1, v2}, Lcom/android/systemui/doze/DozeService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeServiceProvider:Lcom/android/systemui/doze/DozeService_Factory;

    .line 3541
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 3543
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;

    move-result-object v1

    .line 3542
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardLifecyclesDispatcherProvider:Ljavax/inject/Provider;

    .line 3545
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 3546
    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardServiceProvider:Lcom/android/systemui/keyguard/KeyguardService_Factory;

    .line 3548
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->logBufferEulogizerProvider:Ljavax/inject/Provider;

    .line 3549
    invoke-static {v1, v2, v3}, Lcom/android/systemui/dump/DumpHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/DumpHandler_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpHandlerProvider:Lcom/android/systemui/dump/DumpHandler_Factory;

    .line 3551
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3552
    invoke-static {v1, v2}, Lcom/android/systemui/dump/LogBufferFreezer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/LogBufferFreezer_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->logBufferFreezerProvider:Lcom/android/systemui/dump/LogBufferFreezer_Factory;

    .line 3553
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpHandlerProvider:Lcom/android/systemui/dump/DumpHandler_Factory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3554
    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/SystemUIService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemUIServiceProvider:Lcom/android/systemui/SystemUIService_Factory;

    .line 3559
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpHandlerProvider:Lcom/android/systemui/dump/DumpHandler_Factory;

    .line 3560
    invoke-static {v1}, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemUIAuxiliaryDumpServiceProvider:Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;

    .line 3561
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 3562
    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenshotNotificationsControllerProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;

    .line 3564
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 3566
    invoke-static {v2, v3, v1, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/GlobalScreenshot_Factory;

    move-result-object v1

    .line 3565
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalScreenshotProvider:Ljavax/inject/Provider;

    .line 3571
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 3572
    invoke-static {v1, v2, v3}, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->takeScreenshotServiceProvider:Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    .line 3575
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideLongRunningLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideLongRunningLooperFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLongRunningLooperProvider:Ljavax/inject/Provider;

    .line 3578
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideLongRunningExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideLongRunningExecutorFactory;

    move-result-object v1

    .line 3577
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLongRunningExecutorProvider:Ljavax/inject/Provider;

    .line 3580
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCurrentUserContextTrackerProvider:Ljavax/inject/Provider;

    .line 3581
    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/systemui/screenrecord/RecordingService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenrecord/RecordingService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->recordingServiceProvider:Lcom/android/systemui/screenrecord/RecordingService_Factory;

    const/4 v1, 0x7

    .line 3588
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/doze/DozeService;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeServiceProvider:Lcom/android/systemui/doze/DozeService_Factory;

    .line 3589
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/ImageWallpaper;

    .line 3590
    invoke-static {}, Lcom/android/systemui/ImageWallpaper_Factory;->create()Lcom/android/systemui/ImageWallpaper_Factory;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardServiceProvider:Lcom/android/systemui/keyguard/KeyguardService_Factory;

    .line 3591
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/SystemUIService;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemUIServiceProvider:Lcom/android/systemui/SystemUIService_Factory;

    .line 3592
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemUIAuxiliaryDumpServiceProvider:Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;

    .line 3593
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/screenshot/TakeScreenshotService;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->takeScreenshotServiceProvider:Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    .line 3595
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/screenrecord/RecordingService;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->recordingServiceProvider:Lcom/android/systemui/screenrecord/RecordingService_Factory;

    .line 3596
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    .line 3597
    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mapOfClassOfAndProviderOfServiceProvider:Ljavax/inject/Provider;

    .line 3598
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 3600
    invoke-static {v1, v2}, Lcom/android/systemui/biometrics/AuthController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/biometrics/AuthController_Factory;

    move-result-object v1

    .line 3599
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->authControllerProvider:Ljavax/inject/Provider;

    .line 3602
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;->create()Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 3603
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 3605
    invoke-static {v2, v3, v1}, Lcom/android/systemui/util/leak/LeakReporter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/LeakReporter_Factory;

    move-result-object v1

    .line 3604
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    .line 3607
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 3609
    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/util/leak/GarbageMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_Factory;

    move-result-object v1

    .line 3608
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    .line 3614
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3616
    invoke-static {v2, v1}, Lcom/android/systemui/util/leak/GarbageMonitor_Service_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_Service_Factory;

    move-result-object v1

    .line 3615
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->serviceProvider:Ljavax/inject/Provider;

    .line 3617
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    .line 3619
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/InstantAppNotifier_Factory;

    move-result-object v1

    .line 3618
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->instantAppNotifierProvider:Ljavax/inject/Provider;

    .line 3624
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3626
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/LatencyTester_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/LatencyTester_Factory;

    move-result-object v1

    .line 3625
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->latencyTesterProvider:Ljavax/inject/Provider;

    .line 3631
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 3633
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/power/PowerUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerUI_Factory;

    move-result-object v1

    .line 3632
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->powerUIProvider:Ljavax/inject/Provider;

    .line 3638
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 3640
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/ScreenDecorations_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ScreenDecorations_Factory;

    move-result-object v1

    .line 3639
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenDecorationsProvider:Ljavax/inject/Provider;

    .line 3645
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideRecentsProvider:Ljavax/inject/Provider;

    .line 3647
    invoke-static {v1, v2, v3}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;

    move-result-object v1

    .line 3646
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shortcutKeyDispatcherProvider:Ljavax/inject/Provider;

    .line 3649
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 3651
    invoke-static {v1, v2, v3}, Lcom/android/systemui/SizeCompatModeActivityController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SizeCompatModeActivityController_Factory;

    move-result-object v1

    .line 3650
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sizeCompatModeActivityControllerProvider:Ljavax/inject/Provider;

    .line 3655
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3657
    invoke-static {v1, v2}, Lcom/android/systemui/SliceBroadcastRelayHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SliceBroadcastRelayHandler_Factory;

    move-result-object v1

    .line 3656
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sliceBroadcastRelayHandlerProvider:Ljavax/inject/Provider;

    .line 3659
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3660
    invoke-static {v1}, Lcom/android/systemui/accessibility/SystemActions_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/accessibility/SystemActions_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemActionsProvider:Ljavax/inject/Provider;

    .line 3661
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    .line 3663
    invoke-static {v1, v2, v3}, Lcom/android/systemui/theme/ThemeOverlayController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/theme/ThemeOverlayController_Factory;

    move-result-object v1

    .line 3662
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->themeOverlayControllerProvider:Ljavax/inject/Provider;

    .line 3665
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 3666
    invoke-static {v1, v2}, Lcom/android/systemui/toast/ToastUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/toast/ToastUI_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->toastUIProvider:Ljavax/inject/Provider;

    .line 3667
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    .line 3669
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/tv/TvStatusBar_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/tv/TvStatusBar_Factory;

    move-result-object v1

    .line 3668
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tvStatusBarProvider:Ljavax/inject/Provider;

    .line 3671
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    .line 3673
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeUI_Factory;

    move-result-object v1

    .line 3672
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->volumeUIProvider:Ljavax/inject/Provider;

    .line 3674
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 3676
    invoke-static {v1, v2}, Lcom/android/systemui/accessibility/WindowMagnification_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/accessibility/WindowMagnification_Factory;

    move-result-object v1

    .line 3675
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->windowMagnificationProvider:Ljavax/inject/Provider;

    const/16 v1, 0x15

    .line 3678
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/biometrics/AuthController;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->authControllerProvider:Ljavax/inject/Provider;

    .line 3679
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    .line 3680
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/util/leak/GarbageMonitor$Service;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->serviceProvider:Ljavax/inject/Provider;

    .line 3681
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3682
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->instantAppNotifierProvider:Ljavax/inject/Provider;

    .line 3683
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 3684
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/LatencyTester;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->latencyTesterProvider:Ljavax/inject/Provider;

    .line 3685
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/pip/PipUI;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->pipUIProvider:Ljavax/inject/Provider;

    .line 3686
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/power/PowerUI;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->powerUIProvider:Ljavax/inject/Provider;

    .line 3687
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/recents/Recents;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideRecentsProvider:Ljavax/inject/Provider;

    .line 3688
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/ScreenDecorations;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenDecorationsProvider:Ljavax/inject/Provider;

    .line 3689
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->shortcutKeyDispatcherProvider:Ljavax/inject/Provider;

    .line 3690
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/SizeCompatModeActivityController;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sizeCompatModeActivityControllerProvider:Ljavax/inject/Provider;

    .line 3691
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/SliceBroadcastRelayHandler;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sliceBroadcastRelayHandlerProvider:Ljavax/inject/Provider;

    .line 3694
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 3695
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/accessibility/SystemActions;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->systemActionsProvider:Ljavax/inject/Provider;

    .line 3696
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->themeOverlayControllerProvider:Ljavax/inject/Provider;

    .line 3697
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/toast/ToastUI;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->toastUIProvider:Ljavax/inject/Provider;

    .line 3698
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tvStatusBarProvider:Ljavax/inject/Provider;

    .line 3699
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/volume/VolumeUI;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->volumeUIProvider:Ljavax/inject/Provider;

    .line 3700
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/accessibility/WindowMagnification;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->windowMagnificationProvider:Ljavax/inject/Provider;

    .line 3701
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    .line 3702
    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mapOfClassOfAndProviderOfSystemUIProvider:Ljavax/inject/Provider;

    .line 3703
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfDividerProvider:Ljavax/inject/Provider;

    .line 3705
    invoke-static {v1, v2}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;

    move-result-object v1

    .line 3704
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->overviewProxyRecentsImplProvider:Ljavax/inject/Provider;

    const/4 v1, 0x1

    .line 3708
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->overviewProxyRecentsImplProvider:Ljavax/inject/Provider;

    .line 3709
    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    .line 3710
    invoke-virtual {v2}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mapOfClassOfAndProviderOfRecentsImplementationProvider:Ljavax/inject/Provider;

    .line 3711
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    .line 3712
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot_ActionProxyReceiver_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/GlobalScreenshot_ActionProxyReceiver_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->actionProxyReceiverProvider:Lcom/android/systemui/screenshot/GlobalScreenshot_ActionProxyReceiver_Factory;

    .line 3714
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->actionProxyReceiverProvider:Lcom/android/systemui/screenshot/GlobalScreenshot_ActionProxyReceiver_Factory;

    .line 3715
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    .line 3716
    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mapOfClassOfAndProviderOfBroadcastReceiverProvider:Ljavax/inject/Provider;

    .line 3717
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    check-cast v2, Ldagger/internal/DelegateFactory;

    .line 3719
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mapOfClassOfAndProviderOfActivityProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mapOfClassOfAndProviderOfServiceProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mapOfClassOfAndProviderOfSystemUIProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mapOfClassOfAndProviderOfRecentsImplementationProvider:Ljavax/inject/Provider;

    .line 3721
    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/ContextComponentResolver_Factory;

    move-result-object v1

    .line 3720
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    .line 3727
    invoke-virtual {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3730
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;->create()Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;

    move-result-object v1

    .line 3729
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    .line 3731
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3732
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 3736
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    .line 3735
    invoke-static {v1, v2, v3}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNightDisplayListenerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideNightDisplayListenerFactory;

    move-result-object v1

    .line 3734
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    .line 3737
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3739
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;

    move-result-object v1

    .line 3738
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 3741
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 3743
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;

    move-result-object v1

    .line 3742
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    .line 3748
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    .line 3750
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;

    move-result-object v1

    .line 3749
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 3755
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tvSystemUIRootComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 3757
    invoke-static {v1, v2}, Lcom/android/systemui/fragments/FragmentService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService_Factory;

    move-result-object v1

    .line 3756
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    .line 3760
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3761
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 3762
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 3764
    invoke-static {v1}, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;

    move-result-object v1

    .line 3763
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    .line 3766
    invoke-static {}, Lcom/android/systemui/UiOffloadThread_Factory;->create()Lcom/android/systemui/UiOffloadThread_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 3767
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3769
    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerNotificationWarnings_Factory;

    move-result-object v1

    .line 3768
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    .line 3771
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 3773
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;

    move-result-object v1

    .line 3772
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    .line 3778
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3780
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideSensorPrivacyManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideSensorPrivacyManagerFactory;

    move-result-object v1

    .line 3779
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    .line 3781
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationInteractionTrackerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 3782
    invoke-static {v1, v2}, Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceLifetimeExtenderProvider:Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;

    .line 3784
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 3786
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;

    move-result-object v1

    .line 3785
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    .line 3793
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3795
    invoke-static/range {v2 .. v7}, Lcom/android/keyguard/clock/ClockManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/clock/ClockManager_Factory;

    move-result-object v1

    .line 3794
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    .line 3805
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    .line 3804
    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;

    move-result-object v1

    .line 3803
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    .line 3806
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3807
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityModel_Factory;->create(Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardSecurityModel_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    .line 3808
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 3809
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3810
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/WifiTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    .line 3814
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3815
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    .line 3819
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3820
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/CellularTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    .line 3824
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideSharePreferencesProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    .line 3825
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/tiles/DndTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DndTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

    .line 3831
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 3832
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    .line 3833
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3834
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    .line 3838
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 3839
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    .line 3841
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 3842
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    .line 3844
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 3845
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    .line 3847
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3848
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    .line 3853
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3854
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/tiles/CastTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CastTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

    .line 3860
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 3861
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    .line 3865
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 3866
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/UserTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UserTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    .line 3870
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 3871
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    .line 3873
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 3874
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    return-void
.end method

.method private initialize5(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V
    .locals 25

    move-object/from16 v0, p0

    .line 3880
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    .line 3881
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    .line 3883
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3884
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    .line 3885
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3886
    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    .line 3890
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    .line 3891
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    .line 3896
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 3897
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;

    move-result-object v1

    move-object/from16 v24, v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->screenRecordTileProvider:Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;

    .line 3901
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-object/from16 v23, v1

    .line 3903
    invoke-static/range {v4 .. v24}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;

    move-result-object v1

    .line 3902
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    .line 3925
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/AutoAddTracker_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/AutoAddTracker_Builder_Factory;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->builderProvider5:Lcom/android/systemui/qs/AutoAddTracker_Builder_Factory;

    .line 3926
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 3927
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    .line 3937
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 3938
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$PresentJdkOptionalInstanceProvider;->access$500(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfStatusBarProvider:Ljavax/inject/Provider;

    .line 3939
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 3941
    invoke-static {v1, v2}, Lcom/android/systemui/log/dagger/LogModule_ProvideQuickSettingsLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideQuickSettingsLogBufferFactory;

    move-result-object v1

    .line 3940
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideQuickSettingsLogBufferProvider:Ljavax/inject/Provider;

    .line 3943
    invoke-static {v1}, Lcom/android/systemui/qs/logging/QSLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/logging/QSLogger_Factory;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSLoggerProvider:Lcom/android/systemui/qs/logging/QSLogger_Factory;

    .line 3944
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3945
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->optionalOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 3947
    invoke-static/range {v2 .. v14}, Lcom/android/systemui/qs/QSTileHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSTileHost_Factory;

    move-result-object v2

    .line 3946
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 3961
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3962
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->context:Landroid/content/Context;

    .line 3964
    invoke-static {}, Lcom/android/systemui/media/MediaHostStatesManager_Factory;->create()Lcom/android/systemui/media/MediaHostStatesManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    .line 3965
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 3966
    invoke-static {v2, v3, v1}, Lcom/android/systemui/media/MediaViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaViewControllerProvider:Lcom/android/systemui/media/MediaViewController_Factory;

    .line 3970
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3972
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;

    move-result-object v1

    .line 3971
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundRepeatableExecutorProvider:Ljavax/inject/Provider;

    .line 3975
    invoke-static {v1}, Lcom/android/systemui/media/SeekBarViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/SeekBarViewModel_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->seekBarViewModelProvider:Lcom/android/systemui/media/SeekBarViewModel_Factory;

    .line 3976
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaViewControllerProvider:Lcom/android/systemui/media/MediaViewController_Factory;

    .line 3977
    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/systemui/media/MediaControlPanel_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaControlPanel_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaControlPanelProvider:Lcom/android/systemui/media/MediaControlPanel_Factory;

    .line 3983
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 3984
    invoke-static {v1, v2}, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->localMediaManagerFactoryProvider:Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

    .line 3986
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 3987
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideMediaRouter2ManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideMediaRouter2ManagerFactory;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMediaRouter2ManagerProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideMediaRouter2ManagerFactory;

    .line 3988
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->localMediaManagerFactoryProvider:Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaDataManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 3990
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/media/MediaDeviceManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDeviceManager_Factory;

    move-result-object v1

    .line 3989
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaDeviceManagerProvider:Ljavax/inject/Provider;

    .line 3997
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 3999
    invoke-static {v2, v1}, Lcom/android/systemui/media/MediaDataCombineLatest_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDataCombineLatest_Factory;

    move-result-object v1

    .line 3998
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaDataCombineLatestProvider:Ljavax/inject/Provider;

    .line 4001
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaResumeListenerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaDataManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    .line 4003
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/media/MediaDataFilter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDataFilter_Factory;

    move-result-object v1

    .line 4002
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaDataFilterProvider:Ljavax/inject/Provider;

    .line 4010
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaControlPanelProvider:Lcom/android/systemui/media/MediaControlPanel_Factory;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 4012
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/media/MediaCarouselController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaCarouselController_Factory;

    move-result-object v1

    .line 4011
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaCarouselControllerProvider:Ljavax/inject/Provider;

    .line 4022
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 4024
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/media/MediaHierarchyManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHierarchyManager_Factory;

    move-result-object v1

    .line 4023
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 4034
    invoke-static {}, Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;->create()Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaDataFilterProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    .line 4033
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/media/MediaHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHost_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->mediaHostProvider:Lcom/android/systemui/media/MediaHost_Factory;

    .line 4038
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 4040
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/media/KeyguardMediaController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/KeyguardMediaController_Factory;

    move-result-object v1

    .line 4039
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    .line 4045
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    .line 4047
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl_Factory;

    move-result-object v1

    .line 4046
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->peopleHubDataSourceImplProvider:Ljavax/inject/Provider;

    .line 4059
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 4061
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewModelFactoryDataSourceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleHubViewModelFactoryDataSourceImpl_Factory;

    move-result-object v1

    .line 4060
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->peopleHubViewModelFactoryDataSourceImplProvider:Ljavax/inject/Provider;

    .line 4066
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;

    move-result-object v1

    .line 4065
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->peopleHubViewAdapterImplProvider:Ljavax/inject/Provider;

    .line 4068
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 4070
    invoke-static {v1, v2}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;

    move-result-object v1

    .line 4069
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationSectionLogBufferProvider:Ljavax/inject/Provider;

    .line 4074
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger_Factory;

    move-result-object v1

    .line 4073
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->notificationSectionsLoggerProvider:Ljavax/inject/Provider;

    .line 4075
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 4077
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLatencyTrackerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideLatencyTrackerFactory;

    move-result-object v1

    .line 4076
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    .line 4078
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 4080
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideActivityManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideActivityManagerFactory;

    move-result-object v1

    .line 4079
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    .line 4084
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 4083
    invoke-static {v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProviderLayoutInflaterFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProviderLayoutInflaterFactory;

    move-result-object v1

    .line 4082
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectKeyguardSliceProvider(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)Lcom/android/systemui/keyguard/KeyguardSliceProvider;
    .locals 1

    .line 4153
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 4154
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 4153
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMDozeParameters(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    .line 4155
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 4156
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 4155
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMZenModeController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 4157
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 4158
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 4157
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    .line 4159
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 4160
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4159
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMAlarmManager(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/app/AlarmManager;)V

    .line 4161
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    .line 4162
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 4161
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMContentResolver(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/content/ContentResolver;)V

    .line 4163
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 4164
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 4163
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMMediaManager(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 4165
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 4166
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 4165
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    .line 4167
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 4168
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 4167
    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMKeyguardBypassController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-object p1
.end method

.method private injectSystemUIAppComponentFactory(Lcom/android/systemui/SystemUIAppComponentFactory;)Lcom/android/systemui/SystemUIAppComponentFactory;
    .locals 0

    .line 4147
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    .line 4148
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/ContextComponentHelper;

    .line 4147
    invoke-static {p1, p0}, Lcom/android/systemui/SystemUIAppComponentFactory_MembersInjector;->injectMComponentHelper(Lcom/android/systemui/SystemUIAppComponentFactory;Lcom/android/systemui/dagger/ContextComponentHelper;)V

    return-object p1
.end method


# virtual methods
.method public createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
    .locals 2

    .line 4132
    new-instance v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createDumpManager()Lcom/android/systemui/dump/DumpManager;
    .locals 0

    .line 4104
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    return-object p0
.end method

.method public createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
    .locals 2

    .line 4137
    new-instance v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
    .locals 2

    .line 4142
    new-instance v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 4094
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method public getContextComponentHelper()Lcom/android/systemui/dagger/ContextComponentHelper;
    .locals 0

    .line 4099
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/ContextComponentHelper;

    return-object p0
.end method

.method public getInitController()Lcom/android/systemui/InitController;
    .locals 0

    .line 4109
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/InitController;

    return-object p0
.end method

.method public inject(Landroid/content/ContentProvider;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V
    .locals 0

    .line 4119
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->injectSystemUIAppComponentFactory(Lcom/android/systemui/SystemUIAppComponentFactory;)Lcom/android/systemui/SystemUIAppComponentFactory;

    return-void
.end method

.method public inject(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
    .locals 0

    .line 4127
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->injectKeyguardSliceProvider(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    return-void
.end method

.method public provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;
    .locals 0

    .line 4089
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/BootCompleteCacheImpl;

    return-object p0
.end method
