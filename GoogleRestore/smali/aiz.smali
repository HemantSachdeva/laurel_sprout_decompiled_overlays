.class final Laiz;
.super Lcom/google/android/apps/pixelmigrate/common/ui/ViewCallbackItem;
.source "PG"


# instance fields
.field public final a:Latw;

.field final synthetic b:Lajb;


# direct methods
.method public constructor <init>(Lajb;Latw;)V
    .locals 10

    iput-object p1, p0, Laiz;->b:Lajb;

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/common/ui/ViewCallbackItem;-><init>()V

    .line 2
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Laiz;->a:Latw;

    .line 3
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/Item;->d(I)V

    .line 4
    invoke-virtual {p1}, Lajb;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p2, Latw;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    move-wide v3, v0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-wide v0, p2, Latw;->g:J

    move-wide v3, v0

    :goto_1
    nop

    .line 5
    invoke-virtual {p1}, Lba;->p()Landroid/content/Context;

    move-result-object v2

    const-wide/32 v5, 0xea60

    const-wide/32 v7, 0x240c8400

    const/4 v9, 0x0

    .line 6
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/Item;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lba;->p()Landroid/content/Context;

    move-result-object p1

    iget v0, p2, Latw;->a:I

    and-int/lit8 v0, v0, 0x40

    const v1, 0x7f08026e

    const v2, 0x7f080267

    if-eqz v0, :cond_3

    iget p2, p2, Latw;->f:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    goto :goto_2

    .line 9
    :cond_2
    goto :goto_2

    :cond_3
    const v1, 0x7f080267

    .line 8
    :goto_2
    invoke-static {p1, v1}, Ltt;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/Item;->a(Landroid/graphics/drawable/Drawable;)V

    .line 9
    new-instance p1, Laiy;

    invoke-direct {p1, p0}, Laiy;-><init>(Laiz;)V

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/ViewCallbackItem;->c:Lj$/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final Y()Ljava/lang/CharSequence;
    .locals 4

    .line 10
    sget-object v0, Land;->F:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laiz;->a:Latw;

    iget-wide v0, v0, Latw;->b:J

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Laiz;->a:Latw;

    iget-object v0, v0, Latw;->d:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcqv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcrl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laiz;->b:Lajb;

    .line 14
    sget v2, Lajb;->a:I

    .line 15
    invoke-virtual {v1}, Lajb;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Laiz;->b:Lajb;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f110071

    .line 16
    invoke-virtual {v1, v0, v2}, Lba;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
