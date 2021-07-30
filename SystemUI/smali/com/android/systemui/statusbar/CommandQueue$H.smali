.class final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 971
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;Lcom/android/systemui/statusbar/CommandQueue$1;)V
    .locals 0

    .line 969
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 975
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_45

    .line 1305
    :sswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1306
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->suppressAmbientDisplay(Z)V

    goto :goto_0

    .line 1300
    :goto_1
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1301
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onTracingStateChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1291
    :sswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1292
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1293
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 1294
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1295
    invoke-interface {v1, v0, p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_2

    .line 1275
    :sswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1276
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1277
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/os/IBinder;

    .line 1278
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    .line 1279
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Landroid/os/IBinder;

    .line 1280
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Landroid/app/ITransientNotificationCallback;

    .line 1282
    iget v13, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1283
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1284
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move v2, v13

    move-object v3, v0

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move v7, p1

    move-object v8, v12

    .line 1285
    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;)V

    goto :goto_3

    .line 1270
    :goto_4
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1271
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissInattentiveSleepWarning(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1265
    :goto_5
    :sswitch_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1266
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showInattentiveSleepWarning()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1256
    :sswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    move v0, v1

    .line 1257
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1258
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_7

    :cond_0
    move v5, v1

    :goto_7
    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_8

    :cond_1
    move v6, v1

    :goto_8
    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->topAppWindowChanged(IZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1261
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_45

    .line 1248
    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1249
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    .line 1250
    :goto_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 1251
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2, v0, p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->abortTransient(I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1240
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1241
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    .line 1242
    :goto_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 1243
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2, v0, p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showTransient(I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :sswitch_9
    move v0, v1

    .line 1227
    :goto_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 1228
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-lez v4, :cond_3

    move v4, v2

    goto :goto_c

    :cond_3
    move v4, v1

    :goto_c
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRecentsAnimationStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1217
    :goto_d
    :sswitch_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1218
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEscapeToast()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1212
    :goto_e
    :sswitch_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1213
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEnterExitToast(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1207
    :goto_f
    :sswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1208
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showWirelessChargingAnimation(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1202
    :goto_10
    :sswitch_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1203
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideAuthenticationDialog()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1191
    :sswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1192
    :goto_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricError(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1199
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_45

    .line 1186
    :goto_12
    :sswitch_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricHelp(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1180
    :goto_13
    :sswitch_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1181
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricAuthenticated()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1161
    :sswitch_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v2, 0x2a0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v2, 0x290000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v2, 0x280000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1164
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1165
    :goto_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 1170
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1173
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget v11, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1166
    invoke-interface/range {v2 .. v11}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAuthenticationDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZILjava/lang/String;JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1176
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_45

    :sswitch_12
    move v0, v1

    .line 1156
    :goto_15
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 1157
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_6

    move v5, v2

    goto :goto_16

    :cond_6
    move v5, v1

    :goto_16
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRotationProposal(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :sswitch_13
    move v0, v1

    .line 1151
    :goto_17
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 1152
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_18

    :cond_7
    move v4, v1

    :goto_18
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setTopAppHidesStatusBar(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :sswitch_14
    move v0, v1

    .line 1146
    :goto_19
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 1147
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_1a

    :cond_8
    move v4, v1

    :goto_1a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowShutdownUi(ZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1012
    :goto_1b
    :sswitch_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1013
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->togglePanel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1141
    :goto_1c
    :sswitch_16
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1142
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowGlobalActionsMenu()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1136
    :goto_1d
    :sswitch_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleSystemKey(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1054
    :goto_1e
    :sswitch_18
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1055
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1091
    :goto_1f
    :sswitch_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1131
    :goto_20
    :sswitch_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1132
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleSplitScreen()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1126
    :goto_21
    :sswitch_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1121
    :goto_22
    :sswitch_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1116
    :goto_23
    :sswitch_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1111
    :goto_24
    :sswitch_1e
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1112
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPictureInPictureMenu()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1059
    :goto_25
    :sswitch_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1106
    :goto_26
    :sswitch_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1101
    :goto_27
    :sswitch_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1102
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1096
    :goto_28
    :sswitch_22
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1097
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1084
    :sswitch_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    move v0, v1

    .line 1085
    :goto_29
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 1086
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1087
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v3, :cond_9

    move v10, v2

    goto :goto_2a

    :cond_9
    move v10, v1

    .line 1086
    :goto_2a
    invoke-interface/range {v4 .. v10}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(IJJZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1079
    :goto_2b
    :sswitch_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :sswitch_25
    move v0, v1

    .line 1074
    :goto_2c
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 1075
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_a

    move v5, v2

    goto :goto_2d

    :cond_a
    move v5, v1

    :goto_2d
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1069
    :goto_2e
    :sswitch_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :sswitch_27
    move v0, v1

    .line 1034
    :goto_2f
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 1035
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_b

    move v4, v2

    goto :goto_30

    :cond_b
    move v4, v1

    :goto_30
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_c

    move v5, v2

    goto :goto_31

    :cond_c
    move v5, v1

    :goto_31
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :sswitch_28
    move v0, v1

    .line 1029
    :goto_32
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 1030
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_d

    move v4, v2

    goto :goto_33

    :cond_d
    move v4, v1

    :goto_33
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1064
    :goto_34
    :sswitch_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 1049
    :goto_35
    :sswitch_2a
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1050
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 1044
    :goto_36
    :sswitch_2b
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1045
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 1039
    :goto_37
    :sswitch_2c
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1040
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1022
    :sswitch_2d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1023
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/os/IBinder;

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget p0, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz p0, :cond_e

    move v8, v2

    goto :goto_38

    :cond_e
    move v8, v1

    :goto_38
    iget p0, p1, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-eqz p0, :cond_f

    move v9, v2

    goto :goto_39

    :cond_f
    move v9, v1

    :goto_39
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;ILandroid/os/IBinder;IIZZ)V

    goto/16 :goto_45

    .line 1222
    :goto_3a
    :sswitch_2e
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1223
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onDisplayReady(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1232
    :sswitch_2f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    move v0, v1

    .line 1233
    :goto_3b
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    .line 1234
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v6, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, [Lcom/android/internal/view/AppearanceRegion;

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v7, v2, :cond_10

    move v7, v2

    goto :goto_3c

    :cond_10
    move v7, v1

    :goto_3c
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1237
    :cond_11
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_45

    .line 1017
    :goto_3d
    :sswitch_30
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :sswitch_31
    move v0, v1

    .line 1007
    :goto_3e
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 1008
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_12

    move v5, v2

    goto :goto_3f

    :cond_12
    move v5, v1

    :goto_3f
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 1002
    :goto_40
    :sswitch_32
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_16

    .line 1003
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 995
    :sswitch_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    move v0, v1

    .line 996
    :goto_41
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 997
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v7, :cond_13

    move v7, v2

    goto :goto_42

    :cond_13
    move v7, v1

    :goto_42
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 978
    :sswitch_34
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_15

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    goto :goto_45

    .line 987
    :cond_14
    :goto_43
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 988
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 980
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 981
    :goto_44
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 982
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_16
    :goto_45
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_34
        0x20000 -> :sswitch_33
        0x30000 -> :sswitch_32
        0x40000 -> :sswitch_31
        0x50000 -> :sswitch_30
        0x60000 -> :sswitch_2f
        0x70000 -> :sswitch_2e
        0x80000 -> :sswitch_2d
        0x90000 -> :sswitch_2c
        0xa0000 -> :sswitch_2b
        0xb0000 -> :sswitch_2a
        0xc0000 -> :sswitch_29
        0xd0000 -> :sswitch_28
        0xe0000 -> :sswitch_27
        0x120000 -> :sswitch_26
        0x130000 -> :sswitch_25
        0x140000 -> :sswitch_24
        0x150000 -> :sswitch_23
        0x160000 -> :sswitch_22
        0x170000 -> :sswitch_21
        0x180000 -> :sswitch_20
        0x190000 -> :sswitch_1f
        0x1a0000 -> :sswitch_1e
        0x1b0000 -> :sswitch_1d
        0x1c0000 -> :sswitch_1c
        0x1d0000 -> :sswitch_1b
        0x1e0000 -> :sswitch_1a
        0x1f0000 -> :sswitch_19
        0x200000 -> :sswitch_18
        0x210000 -> :sswitch_17
        0x220000 -> :sswitch_16
        0x230000 -> :sswitch_15
        0x240000 -> :sswitch_14
        0x250000 -> :sswitch_13
        0x260000 -> :sswitch_12
        0x270000 -> :sswitch_11
        0x280000 -> :sswitch_10
        0x290000 -> :sswitch_f
        0x2a0000 -> :sswitch_e
        0x2b0000 -> :sswitch_d
        0x2c0000 -> :sswitch_c
        0x2d0000 -> :sswitch_b
        0x2e0000 -> :sswitch_a
        0x2f0000 -> :sswitch_9
        0x300000 -> :sswitch_8
        0x310000 -> :sswitch_7
        0x320000 -> :sswitch_6
        0x330000 -> :sswitch_5
        0x340000 -> :sswitch_4
        0x350000 -> :sswitch_3
        0x360000 -> :sswitch_2
        0x370000 -> :sswitch_1
        0x380000 -> :sswitch_0
    .end sparse-switch
.end method
