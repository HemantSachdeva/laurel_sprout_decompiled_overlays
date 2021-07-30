.class Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$2;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    invoke-static {v0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->access$102(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;I)I

    .line 101
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$2;->this$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->access$200(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V

    return-void
.end method
