.class Lcom/android/systemui/settings/BrightnessController$6;
.super Landroid/os/Handler;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->access$2002(Lcom/android/systemui/settings/BrightnessController;Z)Z

    const/4 v0, 0x0

    .line 270
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v1, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 287
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_3

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v2, v1}, Lcom/android/systemui/settings/BrightnessController;->access$2300(Lcom/android/systemui/settings/BrightnessController;Z)V

    goto :goto_3

    .line 281
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$2200(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_3

    .line 278
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$2200(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-interface {p1, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_3

    .line 275
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$2200(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    goto :goto_3

    .line 272
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_2
    invoke-static {v2, v3, v1}, Lcom/android/systemui/settings/BrightnessController;->access$2100(Lcom/android/systemui/settings/BrightnessController;FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->access$2002(Lcom/android/systemui/settings/BrightnessController;Z)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->access$2002(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 291
    throw p1
.end method
