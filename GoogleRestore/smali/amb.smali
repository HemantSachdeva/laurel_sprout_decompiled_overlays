.class public final Lamb;
.super Lalv;
.source "PG"


# static fields
.field public static final synthetic b:I

.field private static final c:Lacw;


# instance fields
.field final a:Lj$/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "WaitingFragment"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lamb;->c:Lacw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lalv;-><init>()V

    sget-object v0, Lama;->a:Lj$/util/function/Function;

    iput-object v0, p0, Lamb;->a:Lj$/util/function/Function;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lamb;->a:Lj$/util/function/Function;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclv;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 5
    sget-object v2, Lclu;->O:Lclu;

    iget v3, v2, Lclu;->U:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 6
    iget-object v3, v0, Lclv;->b:Ljava/util/EnumMap;

    .line 7
    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v0, v0, Lclv;->b:Ljava/util/EnumMap;

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lclw;

    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    iget-object v3, v2, Lclu;->T:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1, v3}, Lclv;->a(Landroid/content/Context;Ljava/lang/String;)Lclw;

    move-result-object v1

    iget-object v3, v1, Lclw;->c:Landroid/content/res/Resources;

    iget v5, v1, Lclw;->b:I

    new-instance v6, Landroid/util/TypedValue;

    .line 9
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 10
    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 11
    iget v3, v6, Landroid/util/TypedValue;->type:I

    if-ne v3, v7, :cond_1

    iget v3, v6, Landroid/util/TypedValue;->data:I

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lclv;->b:Ljava/util/EnumMap;

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    :goto_0
    const/4 v0, 0x0

    if-eqz v4, :cond_2

    sget-object v1, Lamb;->c:Lacw;

    new-array v2, v0, [Ljava/lang/Object;

    .line 14
    const-string v3, "Loading animation from partner resources"

    invoke-virtual {v1, v3, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x7f0d005c

    .line 15
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00b1

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/view/IllustrationVideoView;

    iget v0, v4, Lclw;->b:I

    iget-object v1, v4, Lclw;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lamb;->c:Lacw;

    new-array v2, v0, [Ljava/lang/Object;

    .line 18
    const-string v3, "Partner resources animation not found, using default spinner."

    invoke-virtual {v1, v3, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x7f0d005b

    .line 19
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 20
    move-object p2, p1

    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f1100da

    invoke-virtual {p0, p2, v0}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;I)V

    .line 17
    :goto_1
    return-object p1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string p2, "Not a illustration resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Lbcs;
    .locals 1

    .line 3
    sget-object v0, Lbcs;->Q:Lbcs;

    return-object v0
.end method
