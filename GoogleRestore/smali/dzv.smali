.class final Ldzv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldyv;

.field final synthetic b:Lebd;

.field final synthetic c:Ldxt;

.field final synthetic d:Leac;


# direct methods
.method public constructor <init>(Leac;Ldyv;Lebd;Ldxt;)V
    .locals 0

    iput-object p1, p0, Ldzv;->d:Leac;

    iput-object p2, p0, Ldzv;->a:Ldyv;

    iput-object p3, p0, Ldzv;->b:Lebd;

    iput-object p4, p0, Ldzv;->c:Ldxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ldzv;->d:Leac;

    iget-object v1, p0, Ldzv;->a:Ldyv;

    iget-object v2, p0, Ldzv;->b:Lebd;

    iget-object v3, p0, Ldzv;->c:Ldxt;

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Leac;->a(Ldyv;Lebd;Ldxt;)V

    return-void
.end method
