.class public final Leec;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lebm;

.field final synthetic b:Leen;


# direct methods
.method public constructor <init>(Leen;Lebm;)V
    .locals 0

    iput-object p1, p0, Leec;->b:Leen;

    iput-object p2, p0, Leec;->a:Lebm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Leec;->b:Leen;

    iget-object v0, v0, Leen;->m:Ledt;

    iget-object v1, p0, Leec;->a:Lebm;

    .line 1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ledt;->a(Ljava/lang/Object;Z)V

    return-void
.end method
