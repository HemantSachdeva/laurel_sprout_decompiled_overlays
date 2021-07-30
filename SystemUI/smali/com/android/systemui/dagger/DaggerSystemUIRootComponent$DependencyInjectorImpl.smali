.class final Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DependencyInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V
    .locals 0

    .line 4241
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 4240
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V

    return-void
.end method

.method private injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;
    .locals 1

    .line 4249
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4250
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    .line 4249
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDumpManager(Lcom/android/systemui/Dependency;Lcom/android/systemui/dump/DumpManager;)V

    .line 4251
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4254
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4253
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4251
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4255
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4257
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4255
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBroadcastDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4258
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4259
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4258
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4260
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4263
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4262
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4260
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4264
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4267
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4266
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4264
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4268
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4271
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4270
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4268
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4272
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4275
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4274
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4272
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4276
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4279
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4278
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4276
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4280
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4283
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4282
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4280
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4284
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4286
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4284
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4287
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4290
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4289
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4287
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4291
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4293
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4291
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4294
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4297
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4296
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4294
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4298
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4301
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4300
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4298
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4302
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4304
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4302
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardUpdateMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4305
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4307
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4305
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4308
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4310
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4308
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4311
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4314
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4313
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4311
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4315
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4318
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4317
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4315
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4319
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4321
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4319
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4322
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4324
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4322
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4325
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4328
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4327
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4325
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4329
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4331
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4329
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4332
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4333
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4332
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4334
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4337
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4336
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4334
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4338
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4339
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4338
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4340
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4341
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4340
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4342
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4343
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4342
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4344
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4346
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4344
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4347
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4350
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4349
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4347
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationShadeWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4351
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4353
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4351
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTempStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4354
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4357
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4356
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4354
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4358
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4361
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4360
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4358
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4362
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4365
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4364
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4362
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4366
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4367
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4366
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4368
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4370
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4368
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4371
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4372
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4371
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4373
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4376
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4375
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4373
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4377
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4378
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4377
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4379
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4382
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4381
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4379
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4383
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4386
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4385
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4383
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4387
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4389
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4387
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4390
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4392
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4390
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4393
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4394
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4393
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4395
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4397
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4395
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4398
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4400
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4398
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4401
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4402
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4401
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4403
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4406
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4405
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4403
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4407
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4408
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4407
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4409
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4411
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4409
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4412
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4414
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4412
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4415
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4417
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4415
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4418
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4421
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4420
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4418
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4422
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4423
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4422
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4424
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4426
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4424
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4427
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4429
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4427
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4430
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4432
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4430
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4433
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4436
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4435
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4433
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4437
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4440
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4439
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4437
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4441
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4444
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4443
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4441
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4445
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4448
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4447
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4445
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4449
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4452
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4451
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4449
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4453
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4456
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4455
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4453
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4457
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4461
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4459
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4457
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4462
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4466
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4464
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4462
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4467
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4469
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4467
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4470
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4472
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4470
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4473
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4476
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4475
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4473
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4477
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4480
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4479
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4477
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4481
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4484
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4483
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4481
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4485
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4488
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4487
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4485
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4489
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4490
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4489
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4491
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4493
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4491
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4494
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4496
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4494
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4497
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4500
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4499
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4497
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4501
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4502
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4501
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4503
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4504
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4503
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4505
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4507
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4505
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4508
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4511
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4510
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4508
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4512
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4513
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4512
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4514
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4517
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4516
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4514
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4518
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4520
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4518
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4521
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4523
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4521
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4524
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4527
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4526
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4524
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4528
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4529
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4528
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4530
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4531
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4530
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4533
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4532
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4534
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4535
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4534
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4536
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4538
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4536
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4539
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4541
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4539
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4542
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4543
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4542
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4544
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4546
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4544
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4547
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4550
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4549
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4547
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4551
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4553
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4551
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4554
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4557
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4556
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4554
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4558
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4560
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4558
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4561
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4563
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4561
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4564
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4565
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4564
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysUiStateFlagsContainer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4566
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4567
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4566
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAlarmManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4568
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4570
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4568
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardSecurityModel(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4571
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4572
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4571
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDozeParameters(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4575
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4573
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWallpaperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4576
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4577
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4576
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCommandQueue(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4578
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4579
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4578
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecents(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4580
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4581
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4580
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBar(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4582
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4583
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4582
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4584
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4585
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4584
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSystemWindows(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4586
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4588
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4586
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayImeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4589
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4590
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4589
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecordingController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4591
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4592
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4591
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMProtoTracer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4593
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4594
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4593
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDivider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4595
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4598
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 4597
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 4595
    invoke-static {p1, p0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFalsingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    return-object p1
.end method


# virtual methods
.method public createSystemUI(Lcom/android/systemui/Dependency;)V
    .locals 0

    .line 4245
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;

    return-void
.end method
