.class final Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExpandableNotificationRowComponentBuilder"
.end annotation


# instance fields
.field private expandableNotificationRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private onDismissRunnable:Ljava/lang/Runnable;

.field private onExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

.field private rowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V
    .locals 0

    .line 4853
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 4853
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V

    return-void
.end method

.method static synthetic access$15200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 4853
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->expandableNotificationRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method static synthetic access$15400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 4853
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$15600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;
    .locals 0

    .line 4853
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->rowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    return-object p0
.end method

.method static synthetic access$15700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;
    .locals 0

    .line 4853
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->onExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    return-object p0
.end method

.method static synthetic access$15800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Ljava/lang/Runnable;
    .locals 0

    .line 4853
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->onDismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;
    .locals 3

    .line 4867
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->expandableNotificationRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const-string v1, " must be set"

    if-eqz v0, :cond_4

    .line 4871
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_3

    .line 4875
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->onDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 4878
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->rowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    if-eqz v0, :cond_1

    .line 4882
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->onExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    if-eqz v0, :cond_0

    .line 4887
    new-instance v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V

    return-object v0

    .line 4883
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    .line 4884
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4879
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 4880
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4876
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Ljava/lang/Runnable;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4872
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4873
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4868
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4869
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public expandableNotificationRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;
    .locals 0

    .line 4893
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->expandableNotificationRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public bridge synthetic expandableNotificationRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
    .locals 0

    .line 4853
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->expandableNotificationRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;

    return-object p0
.end method

.method public notificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;
    .locals 0

    .line 4899
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public bridge synthetic notificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
    .locals 0

    .line 4853
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->notificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;

    return-object p0
.end method

.method public onDismissRunnable(Ljava/lang/Runnable;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;
    .locals 0

    .line 4905
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->onDismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public bridge synthetic onDismissRunnable(Ljava/lang/Runnable;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
    .locals 0

    .line 4853
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->onDismissRunnable(Ljava/lang/Runnable;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;

    return-object p0
.end method

.method public onExpandClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;
    .locals 0

    .line 4919
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->onExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    return-object p0
.end method

.method public bridge synthetic onExpandClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
    .locals 0

    .line 4853
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->onExpandClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;

    return-object p0
.end method

.method public rowContentBindStage(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;
    .locals 0

    .line 4912
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->rowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    return-object p0
.end method

.method public bridge synthetic rowContentBindStage(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
    .locals 0

    .line 4853
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->rowContentBindStage(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;

    return-object p0
.end method
