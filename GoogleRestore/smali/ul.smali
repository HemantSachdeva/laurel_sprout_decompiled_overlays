.class final Lul;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Luw;


# instance fields
.field final synthetic a:Ldv;


# direct methods
.method public constructor <init>(Ldv;)V
    .locals 0

    iput-object p1, p0, Lul;->a:Ldv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lul;->a:Ldv;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ldv;->a(I)V

    return-void

    :cond_0
    check-cast p1, Luq;

    iget v0, p1, Luq;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lul;->a:Ldv;

    iget-object p1, p1, Luq;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Ldv;->b(Landroid/graphics/Typeface;)V

    return-void

    :cond_1
    iget-object p1, p0, Lul;->a:Ldv;

    invoke-virtual {p1, v0}, Ldv;->a(I)V

    return-void
.end method
