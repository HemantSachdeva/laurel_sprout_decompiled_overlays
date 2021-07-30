.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;
.super Ljava/lang/Object;
.source "NotificationSectionsManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->decorViewHeaderState(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

.field final synthetic $header:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

.field final synthetic $inner:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->$inner:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->$header:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->$$delegate_0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    return-void
.end method


# virtual methods
.method public adjustViewPosition()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->$inner:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->adjustViewPosition()V

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->getCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->$header:Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->$$delegate_0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getCurrentPosition()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getTargetPosition()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->$$delegate_0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setCurrentPosition(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->$$delegate_0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setCurrentPosition(Ljava/lang/Integer;)V

    return-void
.end method

.method public setTargetPosition(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;->$$delegate_0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    return-void
.end method
