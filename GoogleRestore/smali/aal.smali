.class public final Laal;
.super Lacu;
.source "PG"

# interfaces
.implements Laam;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ServiceConnection;

.field private final c:Laam;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.android.vending.setup.IPlaySetupService"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Laam;)V
    .locals 1

    .line 38
    const-string v0, "com.android.vending.setup.IPlaySetupService"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Laal;->a:Landroid/content/Context;

    iput-object p2, p0, Laal;->b:Landroid/content/ServiceConnection;

    .line 40
    invoke-static {p3}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Laal;->c:Laam;

    return-void
.end method

.method private final h()V
    .locals 2

    iget-object v0, p0, Laal;->a:Landroid/content/Context;

    iget-object v1, p0, Laal;->b:Landroid/content/ServiceConnection;

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 46
    invoke-interface {v0}, Laam;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    invoke-direct {p0}, Laal;->h()V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 52
    invoke-interface {v0, p1}, Laam;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 53
    invoke-direct {p0}, Laal;->h()V

    return-object p1
.end method

.method public final a(Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 50
    invoke-interface {v0, p1, p2, p3}, Laam;->a(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p1

    .line 51
    invoke-direct {p0}, Laal;->h()V

    return-object p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 44
    invoke-interface {v0, p1, p2}, Laam;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 45
    invoke-direct {p0}, Laal;->h()V

    return-object p1
.end method

.method public final a(Ljava/lang/String;[Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 56
    invoke-interface {v0, p1, p2}, Laam;->a(Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Laal;->h()V

    return-void
.end method

.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 34
    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 2
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2}, Laal;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Laal;->g()Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Bundle;

    .line 12
    invoke-virtual {p0, p1, p2}, Laal;->a(Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 14
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Laal;->a(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 19
    :pswitch_5
    invoke-virtual {p0}, Laal;->f()V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 21
    :pswitch_6
    invoke-virtual {p0}, Laal;->e()Landroid/os/Bundle;

    move-result-object p1

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 24
    :pswitch_7
    invoke-virtual {p0}, Laal;->d()V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 26
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Laal;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 30
    :pswitch_9
    invoke-virtual {p0}, Laal;->c()Z

    move-result p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-static {p3, p1}, Lacv;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 33
    :pswitch_a
    invoke-virtual {p0}, Laal;->b()V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 35
    :pswitch_b
    invoke-virtual {p0}, Laal;->a()Landroid/os/Bundle;

    move-result-object p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-static {p3, p1}, Lacv;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 18
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 60
    invoke-interface {v0}, Laam;->b()V

    .line 61
    invoke-direct {p0}, Laal;->h()V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 41
    invoke-interface {v0}, Laam;->c()Z

    move-result v0

    .line 42
    invoke-direct {p0}, Laal;->h()V

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 62
    invoke-interface {v0}, Laam;->d()V

    .line 63
    invoke-direct {p0}, Laal;->h()V

    return-void
.end method

.method public final e()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 48
    invoke-interface {v0}, Laam;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    invoke-direct {p0}, Laal;->h()V

    return-object v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 58
    invoke-interface {v0}, Laam;->f()V

    .line 59
    invoke-direct {p0}, Laal;->h()V

    return-void
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Laal;->c:Laam;

    .line 54
    invoke-interface {v0}, Laam;->g()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    invoke-direct {p0}, Laal;->h()V

    return-object v0
.end method
