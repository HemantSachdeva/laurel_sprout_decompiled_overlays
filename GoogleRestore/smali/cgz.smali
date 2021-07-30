.class final Lcgz;
.super Ldv;
.source "PG"


# instance fields
.field final synthetic a:Lchb;

.field final synthetic b:Lcha;


# direct methods
.method public constructor <init>(Lcha;Lchb;)V
    .locals 0

    iput-object p1, p0, Lcgz;->b:Lcha;

    iput-object p2, p0, Lcgz;->a:Lchb;

    invoke-direct {p0}, Ldv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcgz;->b:Lcha;

    .line 1
    invoke-static {v0}, Lcha;->a(Lcha;)V

    iget-object v0, p0, Lcgz;->a:Lchb;

    .line 2
    invoke-virtual {v0}, Lchb;->b()V

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lcgz;->b:Lcha;

    iget v1, v0, Lcha;->d:I

    .line 3
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Lcha;->j:Landroid/graphics/Typeface;

    iget-object p1, p0, Lcgz;->b:Lcha;

    .line 4
    invoke-static {p1}, Lcha;->a(Lcha;)V

    iget-object p1, p0, Lcgz;->a:Lchb;

    iget-object v0, p0, Lcgz;->b:Lcha;

    iget-object v0, v0, Lcha;->j:Landroid/graphics/Typeface;

    .line 5
    invoke-virtual {p1, v0}, Lchb;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
