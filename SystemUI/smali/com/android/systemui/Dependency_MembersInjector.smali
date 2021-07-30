.class public final Lcom/android/systemui/Dependency_MembersInjector;
.super Ljava/lang/Object;
.source "Dependency_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/android/systemui/Dependency;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;)V"
        }
    .end annotation

    .line 1054
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAccessibilityController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1159
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAccessibilityManagerWrapper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1404
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mActivityManagerWrapper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)V"
        }
    .end annotation

    .line 954
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mActivityStarter:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAlarmManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/app/AlarmManager;",
            ">;)V"
        }
    .end annotation

    .line 1437
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAlarmManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;)V"
        }
    .end annotation

    .line 1250
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAppOpsController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;)V"
        }
    .end annotation

    .line 1067
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;)V"
        }
    .end annotation

    .line 964
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAsyncSensorManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;)V"
        }
    .end annotation

    .line 1365
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mAutoHideController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;)V"
        }
    .end annotation

    .line 1029
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBatteryController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 1379
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBgHandler:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 1375
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;)V"
        }
    .end annotation

    .line 969
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBroadcastDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 959
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBroadcastDispatcher:Ldagger/Lazy;

    return-void
.end method

.method public static injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;)V"
        }
    .end annotation

    .line 1350
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mBubbleController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;)V"
        }
    .end annotation

    .line 999
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mCastController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;)V"
        }
    .end annotation

    .line 1399
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mClockManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMCommandQueue(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)V"
        }
    .end annotation

    .line 1456
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mCommandQueue:Ldagger/Lazy;

    return-void
.end method

.method public static injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;)V"
        }
    .end annotation

    .line 1110
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mConfigurationController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 1105
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;)V"
        }
    .end annotation

    .line 1049
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDataSaverController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1409
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDevicePolicyManagerWrapper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;)V"
        }
    .end annotation

    .line 1059
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDisplayController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;)V"
        }
    .end annotation

    .line 1469
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDisplayController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDisplayImeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/wm/DisplayImeController;",
            ">;)V"
        }
    .end annotation

    .line 1478
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDisplayImeController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/util/DisplayMetrics;",
            ">;)V"
        }
    .end annotation

    .line 1223
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDisplayMetrics:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDivider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;)V"
        }
    .end annotation

    .line 1491
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDivider:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;)V"
        }
    .end annotation

    .line 1423
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDockManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDozeParameters(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;)V"
        }
    .end annotation

    .line 1447
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDozeParameters:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDumpManager(Lcom/android/systemui/Dependency;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    return-void
.end method

.method public static injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;)V"
        }
    .end annotation

    .line 1208
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mEnhancedEstimates:Ldagger/Lazy;

    return-void
.end method

.method public static injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;)V"
        }
    .end annotation

    .line 1135
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mExtensionController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMFalsingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;)V"
        }
    .end annotation

    .line 1496
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mFalsingManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController;",
            ">;)V"
        }
    .end annotation

    .line 1004
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mFlashlightController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;)V"
        }
    .end annotation

    .line 1174
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mForegroundServiceController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;)V"
        }
    .end annotation

    .line 1371
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mForegroundServiceNotificationListener:Ldagger/Lazy;

    return-void
.end method

.method public static injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;)V"
        }
    .end annotation

    .line 1130
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    return-void
.end method

.method public static injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;)V"
        }
    .end annotation

    .line 1085
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mGarbageMonitor:Ldagger/Lazy;

    return-void
.end method

.method public static injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;)V"
        }
    .end annotation

    .line 994
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mHotspotController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/app/INotificationManager;",
            ">;)V"
        }
    .end annotation

    .line 1428
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mINotificationManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;)V"
        }
    .end annotation

    .line 1218
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mIStatusBarService:Ldagger/Lazy;

    return-void
.end method

.method public static injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/view/IWindowManager;",
            ">;)V"
        }
    .end annotation

    .line 1193
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mIWindowManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;)V"
        }
    .end annotation

    .line 1334
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mKeyguardDismissUtil:Ldagger/Lazy;

    return-void
.end method

.method public static injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;",
            ">;)V"
        }
    .end annotation

    .line 1234
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mKeyguardEnvironment:Ldagger/Lazy;

    return-void
.end method

.method public static injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;)V"
        }
    .end annotation

    .line 1019
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mKeyguardMonitor:Ldagger/Lazy;

    return-void
.end method

.method public static injectMKeyguardSecurityModel(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;)V"
        }
    .end annotation

    .line 1442
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mKeyguardSecurityModel:Ldagger/Lazy;

    return-void
.end method

.method public static injectMKeyguardUpdateMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;)V"
        }
    .end annotation

    .line 1024
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;)V"
        }
    .end annotation

    .line 1076
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLeakDetector:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1395
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLeakReportEmail:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;)V"
        }
    .end annotation

    .line 1080
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLeakReporter:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;)V"
        }
    .end annotation

    .line 1188
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;)V"
        }
    .end annotation

    .line 1145
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLocalBluetoothManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/LocationController;",
            ">;)V"
        }
    .end annotation

    .line 974
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLocationController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;)V"
        }
    .end annotation

    .line 1228
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mLockscreenGestureLogger:Ldagger/Lazy;

    return-void
.end method

.method public static injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 1387
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mMainHandler:Ldagger/Lazy;

    return-void
.end method

.method public static injectMMainLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 1383
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mMainLooper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;)V"
        }
    .end annotation

    .line 1039
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mManagedProfileController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;)V"
        }
    .end annotation

    .line 1154
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;)V"
        }
    .end annotation

    .line 1203
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;)V"
        }
    .end annotation

    .line 1255
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;)V"
        }
    .end annotation

    .line 984
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNetworkController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;)V"
        }
    .end annotation

    .line 1044
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNextAlarmController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;)V"
        }
    .end annotation

    .line 1034
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNightDisplayListener:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;)V"
        }
    .end annotation

    .line 1298
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationBlockingHelperManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;)V"
        }
    .end annotation

    .line 1355
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationEntryManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;)V"
        }
    .end annotation

    .line 1329
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationFilter:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;)V"
        }
    .end annotation

    .line 1272
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationGroupAlertTransferHelper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;)V"
        }
    .end annotation

    .line 1277
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationGroupManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;)V"
        }
    .end annotation

    .line 1287
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationGutsManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;)V"
        }
    .end annotation

    .line 1313
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationListener:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;)V"
        }
    .end annotation

    .line 1266
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationLockscreenUserManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;)V"
        }
    .end annotation

    .line 1318
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationLogger:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;)V"
        }
    .end annotation

    .line 1292
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;)V"
        }
    .end annotation

    .line 1303
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;",
            ">;)V"
        }
    .end annotation

    .line 1245
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationShadeWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;)V"
        }
    .end annotation

    .line 1095
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationShadeWindowController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;)V"
        }
    .end annotation

    .line 1324
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mNotificationViewHierarchyManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;)V"
        }
    .end annotation

    .line 1198
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mOverviewProxyService:Ldagger/Lazy;

    return-void
.end method

.method public static injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1414
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mPackageManagerWrapper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;)V"
        }
    .end annotation

    .line 1140
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mPluginDependencyProvider:Ldagger/Lazy;

    return-void
.end method

.method public static injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;)V"
        }
    .end annotation

    .line 1063
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMProtoTracer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;)V"
        }
    .end annotation

    .line 1487
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mProtoTracer:Ldagger/Lazy;

    return-void
.end method

.method public static injectMRecents(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;)V"
        }
    .end annotation

    .line 1460
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mRecents:Ldagger/Lazy;

    return-void
.end method

.method public static injectMRecordingController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;)V"
        }
    .end annotation

    .line 1483
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mRecordingController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;)V"
        }
    .end annotation

    .line 1345
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

    return-void
.end method

.method public static injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController;",
            ">;)V"
        }
    .end annotation

    .line 979
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mRotationLockController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;)V"
        }
    .end annotation

    .line 1120
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mScreenLifecycle:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SecurityController;",
            ">;)V"
        }
    .end annotation

    .line 1072
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSecurityController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController;",
            ">;)V"
        }
    .end annotation

    .line 1419
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;)V"
        }
    .end annotation

    .line 1360
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;)V"
        }
    .end annotation

    .line 1239
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mShadeController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;)V"
        }
    .end annotation

    .line 1308
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSmartReplyConstants:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;)V"
        }
    .end annotation

    .line 1339
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSmartReplyController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMStatusBar(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    .line 1464
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mStatusBar:Ldagger/Lazy;

    return-void
.end method

.method public static injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;)V"
        }
    .end annotation

    .line 1115
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mStatusBarIconController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)V"
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSysUiStateFlagsContainer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)V"
        }
    .end annotation

    .line 1433
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSysUiStateFlagsContainer:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSystemWindows(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;)V"
        }
    .end annotation

    .line 1473
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSystemWindows:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;)V"
        }
    .end annotation

    .line 1164
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mSysuiColorExtractor:Ldagger/Lazy;

    return-void
.end method

.method public static injectMTempStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;)V"
        }
    .end annotation

    .line 1100
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mTempStatusBarWindowController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 1391
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    return-void
.end method

.method public static injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;)V"
        }
    .end annotation

    .line 1169
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mTunablePaddingService:Ldagger/Lazy;

    return-void
.end method

.method public static injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;)V"
        }
    .end annotation

    .line 1089
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    return-void
.end method

.method public static injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;)V"
        }
    .end annotation

    .line 1179
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    return-void
.end method

.method public static injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;)V"
        }
    .end annotation

    .line 1014
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mUserInfoController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;)V"
        }
    .end annotation

    .line 1009
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mUserSwitcherController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;)V"
        }
    .end annotation

    .line 1213
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mVibratorHelper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;)V"
        }
    .end annotation

    .line 1282
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mVisualStabilityManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/VolumeDialogController;",
            ">;)V"
        }
    .end annotation

    .line 1150
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    return-void
.end method

.method public static injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)V"
        }
    .end annotation

    .line 1125
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mWakefulnessLifecycle:Ldagger/Lazy;

    return-void
.end method

.method public static injectMWallpaperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Landroid/app/IWallpaperManager;",
            ">;)V"
        }
    .end annotation

    .line 1452
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mWallpaperManager:Ldagger/Lazy;

    return-void
.end method

.method public static injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/power/PowerUI$WarningsUI;",
            ">;)V"
        }
    .end annotation

    .line 1183
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mWarningsUI:Ldagger/Lazy;

    return-void
.end method

.method public static injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/Dependency;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;)V"
        }
    .end annotation

    .line 989
    iput-object p1, p0, Lcom/android/systemui/Dependency;->mZenModeController:Ldagger/Lazy;

    return-void
.end method
