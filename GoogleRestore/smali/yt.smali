.class final Lyt;
.super Lyp;
.source "PG"


# instance fields
.field final synthetic a:Lyo;


# direct methods
.method public constructor <init>(Lyo;)V
    .locals 0

    iput-object p1, p0, Lyt;->a:Lyo;

    invoke-direct {p0}, Lyp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyo;)V
    .locals 1

    iget-object v0, p0, Lyt;->a:Lyo;

    .line 1
    invoke-virtual {v0}, Lyo;->c()V

    .line 2
    invoke-virtual {p1, p0}, Lyo;->b(Lyn;)V

    return-void
.end method
