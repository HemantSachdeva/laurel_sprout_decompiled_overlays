.class Lcom/google/android/pano/widget/CursorWebView$2;
.super Landroid/content/BroadcastReceiver;
.source "CursorWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/CursorWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/CursorWebView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/CursorWebView;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "scroll"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CursorWebView"

    if-eqz v0, :cond_0

    .line 217
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$1200(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v0

    float-to-int v0, v0

    const-string v2, "accel"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/google/android/pano/widget/CursorWebView;->access$1202(Lcom/google/android/pano/widget/CursorWebView;F)F

    .line 218
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$1400(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v0

    const-string v2, "min"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/pano/widget/CursorWebView;->access$1402(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 219
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v0

    const-string v2, "max"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/pano/widget/CursorWebView;->access$1002(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 220
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$1300(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v0

    const-string v2, "aMax"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/pano/widget/CursorWebView;->access$1302(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "duration "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p2}, Lcom/google/android/pano/widget/CursorWebView;->access$1200(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " min "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p2}, Lcom/google/android/pano/widget/CursorWebView;->access$1400(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " max "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    .line 222
    invoke-static {p2}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " accelerated max "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p0}, Lcom/google/android/pano/widget/CursorWebView;->access$1300(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const-string v0, "size"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$1500(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v0

    const-string v2, "w"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/pano/widget/CursorWebView;->access$1502(Lcom/google/android/pano/widget/CursorWebView;F)F

    .line 225
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$1600(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v0

    const-string v2, "h"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/pano/widget/CursorWebView;->access$1602(Lcom/google/android/pano/widget/CursorWebView;F)F

    .line 226
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$500(Lcom/google/android/pano/widget/CursorWebView;)Lcom/google/android/pano/util/TouchNavSpaceTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v0}, Lcom/google/android/pano/widget/CursorWebView;->access$1500(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v0

    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$1600(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalSize(FF)V

    .line 227
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$1700(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v0

    const-string v2, "margin"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/pano/widget/CursorWebView;->access$1702(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 228
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$1800(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p1

    const-string v0, "drawMargin"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 229
    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p2}, Lcom/google/android/pano/widget/CursorWebView;->access$1800(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 230
    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p2, p1}, Lcom/google/android/pano/widget/CursorWebView;->access$1802(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 231
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->onSizeChanged(IIII)V

    .line 233
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "width "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p2}, Lcom/google/android/pano/widget/CursorWebView;->access$1500(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " height "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p2}, Lcom/google/android/pano/widget/CursorWebView;->access$1600(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " margin "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p2}, Lcom/google/android/pano/widget/CursorWebView;->access$1700(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " draw margin "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    .line 234
    invoke-static {p0}, Lcom/google/android/pano/widget/CursorWebView;->access$1800(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "cursor"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 236
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$1900(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v0

    const-string v2, "radius"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/pano/widget/CursorWebView;->access$1902(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 237
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$2000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v0

    const-string v2, "color"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/pano/widget/CursorWebView;->access$2002(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 238
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p1}, Lcom/google/android/pano/widget/CursorWebView;->access$2100(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v0

    const-string v2, "color2"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/pano/widget/CursorWebView;->access$2102(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "radius "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p2}, Lcom/google/android/pano/widget/CursorWebView;->access$1900(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " color "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p2}, Lcom/google/android/pano/widget/CursorWebView;->access$2000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " color2 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    .line 240
    invoke-static {p0}, Lcom/google/android/pano/widget/CursorWebView;->access$2100(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 239
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
