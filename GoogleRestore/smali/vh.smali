.class public final Lvh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lva;

.field public static final b:Lva;

.field public static final c:Lva;

.field public static final d:Lva;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lvf;

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvf;-><init>(Lvd;Z)V

    sput-object v0, Lvh;->a:Lva;

    new-instance v0, Lvf;

    .line 2
    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lvf;-><init>(Lvd;Z)V

    sput-object v0, Lvh;->b:Lva;

    new-instance v0, Lvf;

    sget-object v1, Lvc;->a:Lvc;

    .line 3
    invoke-direct {v0, v1, v2}, Lvf;-><init>(Lvd;Z)V

    sput-object v0, Lvh;->c:Lva;

    new-instance v0, Lvf;

    sget-object v1, Lvc;->a:Lvc;

    .line 4
    invoke-direct {v0, v1, v3}, Lvf;-><init>(Lvd;Z)V

    sput-object v0, Lvh;->d:Lva;

    new-instance v0, Lvf;

    sget-object v1, Lvb;->a:Lvb;

    .line 5
    invoke-direct {v0, v1, v2}, Lvf;-><init>(Lvd;Z)V

    .line 6
    sget v0, Lvg;->a:I

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
