.class public final Laao;
.super Lacu;
.source "PG"

# interfaces
.implements Laap;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ServiceConnection;

.field private final c:Laap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.android.vending.setup.IPlaySetupServiceV2"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Laap;)V
    .locals 1

    .line 47
    const-string v0, "com.android.vending.setup.IPlaySetupServiceV2"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Laao;->a:Landroid/content/Context;

    iput-object p2, p0, Laao;->b:Landroid/content/ServiceConnection;

    .line 48
    invoke-static {p3}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Laao;->c:Laap;

    return-void
.end method

.method private final c()V
    .locals 2

    iget-object v0, p0, Laao;->a:Landroid/content/Context;

    iget-object v1, p0, Laao;->b:Landroid/content/ServiceConnection;

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 70
    invoke-interface {v0, p1}, Laap;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 71
    invoke-direct {p0}, Laao;->c()V

    return-object p1
.end method

.method public final a(Landroid/os/ResultReceiver;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 62
    invoke-interface {v0, p1, p2}, Laap;->a(Landroid/os/ResultReceiver;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 63
    invoke-direct {p0}, Laao;->c()V

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 58
    invoke-interface {v0, p1}, Laap;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 59
    invoke-direct {p0}, Laao;->c()V

    return-object p1
.end method

.method public final a(Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 52
    invoke-interface {v0, p1, p2, p3}, Laap;->a(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p1

    .line 53
    invoke-direct {p0}, Laao;->c()V

    return-object p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 54
    invoke-interface {v0, p1, p2}, Laap;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 55
    invoke-direct {p0}, Laao;->c()V

    return-object p1
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 49
    invoke-interface {v0}, Laap;->a()V

    .line 50
    invoke-direct {p0}, Laao;->c()V

    return-void
.end method

.method public final a(Landroid/os/ResultReceiver;)V
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 72
    invoke-interface {v0, p1}, Laap;->a(Landroid/os/ResultReceiver;)V

    .line 73
    invoke-direct {p0}, Laao;->c()V

    return-void
.end method

.method public final a([Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 68
    invoke-interface {v0, p1}, Laap;->a([Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0}, Laao;->c()V

    return-void
.end method

.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 43
    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 2
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p0, p1}, Laao;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 7
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 8
    invoke-virtual {p0, p1, p2}, Laao;->a(Landroid/os/ResultReceiver;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 11
    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 12
    invoke-virtual {p0, p1}, Laao;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 15
    :pswitch_4
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 16
    invoke-virtual {p0, p1}, Laao;->b(Landroid/os/ResultReceiver;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Bundle;

    .line 19
    invoke-virtual {p0, p1}, Laao;->a([Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 21
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p0, p1, p2}, Laao;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 26
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 28
    invoke-virtual {p0, p1, v0, v1}, Laao;->a(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 31
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Laao;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 35
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Laao;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 39
    :pswitch_a
    invoke-virtual {p0}, Laao;->b()Z

    move-result p1

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    invoke-static {p3, p1}, Lacv;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 42
    :pswitch_b
    invoke-virtual {p0}, Laao;->a()V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 44
    :pswitch_c
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 45
    invoke-virtual {p0, p1}, Laao;->a(Landroid/os/ResultReceiver;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 64
    invoke-interface {v0, p1}, Laap;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 65
    invoke-direct {p0}, Laao;->c()V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 56
    invoke-interface {v0, p1}, Laap;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 57
    invoke-direct {p0}, Laao;->c()V

    return-object p1
.end method

.method public final b(Landroid/os/ResultReceiver;)V
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 66
    invoke-interface {v0, p1}, Laap;->b(Landroid/os/ResultReceiver;)V

    .line 67
    invoke-direct {p0}, Laao;->c()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Laao;->c:Laap;

    .line 60
    invoke-interface {v0}, Laap;->b()Z

    move-result v0

    .line 61
    invoke-direct {p0}, Laao;->c()V

    return v0
.end method
