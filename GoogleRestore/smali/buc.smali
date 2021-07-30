.class public final Lbuc;
.super Lqc;
.source "PG"


# static fields
.field private static final c:Ljava/text/SimpleDateFormat;


# instance fields
.field private final d:Landroid/content/Context;

.field private e:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "H:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lbuc;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lqc;-><init>()V

    iput-object p1, p0, Lbuc;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lbuc;->e:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Landroid/view/ViewGroup;I)Lqz;
    .locals 2

    iget-object p2, p0, Lbuc;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0090

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lbub;

    invoke-direct {p2, p1}, Lbub;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lbuc;->e:Landroid/database/Cursor;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iput-object p1, p0, Lbuc;->e:Landroid/database/Cursor;

    .line 5
    invoke-virtual {p0}, Lqc;->b()V

    :cond_1
    return-void
.end method

.method public final bridge synthetic a(Lqz;I)V
    .locals 3

    check-cast p1, Lbub;

    iget-object v0, p0, Lbuc;->e:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    sget p2, Lbub;->t:I

    iget-object p2, p1, Lbub;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lbuc;->e:Landroid/database/Cursor;

    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lbub;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lbuc;->e:Landroid/database/Cursor;

    const-string v1, "message"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lbuc;->e:Landroid/database/Cursor;

    const-string v0, "created_at"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object p1, p1, Lbub;->s:Landroid/widget/TextView;

    sget-object p2, Lbuc;->c:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
