.class final Ldt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Typeface;

.field final synthetic b:Ldv;


# direct methods
.method public constructor <init>(Ldv;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Ldt;->b:Ldv;

    iput-object p2, p0, Ldt;->a:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldt;->b:Ldv;

    iget-object v1, p0, Ldt;->a:Landroid/graphics/Typeface;

    .line 1
    invoke-virtual {v0, v1}, Ldv;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
