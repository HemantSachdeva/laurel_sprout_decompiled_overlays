.class final Lcgp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/TextPaint;

.field public final c:I

.field public d:I

.field public e:Landroid/text/Layout$Alignment;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcgp;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcgp;->b:Landroid/text/TextPaint;

    iput p3, p0, Lcgp;->c:I

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcgp;->d:I

    .line 2
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lcgp;->e:Landroid/text/Layout$Alignment;

    const p1, 0x7fffffff

    iput p1, p0, Lcgp;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcgp;->g:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcgp;->i:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method
