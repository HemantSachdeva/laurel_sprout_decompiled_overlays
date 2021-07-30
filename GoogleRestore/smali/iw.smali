.class final Liw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfo;


# instance fields
.field final synthetic a:Lix;


# direct methods
.method public constructor <init>(Lix;)V
    .locals 0

    iput-object p1, p0, Liw;->a:Lix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Liw;->a:Lix;

    .line 1
    invoke-virtual {v0, p1}, Lix;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
