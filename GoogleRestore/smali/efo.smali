.class final Lefo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leae;


# direct methods
.method public constructor <init>(Leae;)V
    .locals 0

    iput-object p1, p0, Lefo;->a:Leae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lefo;->a:Leae;

    iget-object v0, v0, Leae;->e:Leen;

    .line 1
    sget-object v1, Lefs;->d:Ldyv;

    invoke-virtual {v0, v1}, Leen;->a(Ldyv;)V

    return-void
.end method
