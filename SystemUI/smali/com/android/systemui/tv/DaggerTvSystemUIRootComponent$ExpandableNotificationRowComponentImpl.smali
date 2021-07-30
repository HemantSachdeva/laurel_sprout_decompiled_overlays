.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExpandableNotificationRowComponentImpl"
.end annotation


# instance fields
.field private activatableNotificationViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

.field private expandableNotificationRowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;",
            ">;"
        }
    .end annotation
.end field

.field private expandableNotificationRowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private expandableOutlineViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;

.field private expandableViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;

.field private notificationEntryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private onDismissRunnableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onExpandClickListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppNameProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

.field private provideNotificationKeyProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

.field private provideStatusBarNotificationProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

.field private rowContentBindStageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)V
    .locals 0

    .line 4973
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4974
    invoke-direct {p0, p2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->initialize(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    .line 4939
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)V
    .locals 21

    move-object/from16 v0, p0

    .line 4980
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->access$15300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    .line 4982
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;

    .line 4983
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    .line 4984
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableOutlineViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;

    .line 4986
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4990
    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4991
    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 4987
    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->activatableNotificationViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    .line 4992
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->access$15500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->notificationEntryProvider:Ljavax/inject/Provider;

    .line 4995
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    .line 4996
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4999
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    .line 4998
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideAppNameProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    .line 5001
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    .line 5003
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideNotificationKeyProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    .line 5004
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->access$15700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 5005
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->access$15800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->onExpandClickListenerProvider:Ljavax/inject/Provider;

    .line 5006
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->access$15900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->onDismissRunnableProvider:Ljavax/inject/Provider;

    .line 5007
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->activatableNotificationViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5012
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5013
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5014
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$16000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideAppNameProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideNotificationKeyProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5017
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5018
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5020
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5021
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->onExpandClickListenerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5024
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v15

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5025
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v16

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5026
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v17

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->onDismissRunnableProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5028
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v19

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5030
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$16100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v20

    .line 5009
    invoke-static/range {v2 .. v20}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController_Factory;

    move-result-object v1

    .line 5008
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getExpandableNotificationRowController()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;
    .locals 0

    .line 5035
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    return-object p0
.end method
