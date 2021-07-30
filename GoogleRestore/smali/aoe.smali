.class final Laoe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczm;


# instance fields
.field final synthetic a:Ldac;

.field final synthetic b:Laoh;


# direct methods
.method public constructor <init>(Laoh;Ldac;)V
    .locals 0

    iput-object p1, p0, Laoe;->b:Laoh;

    iput-object p2, p0, Laoe;->a:Ldac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Laoe;->b:Laoh;

    iget-object p1, p1, Laoh;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v0, p0, Laoe;->a:Ldac;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Laoe;->b:Laoh;

    iget-object p1, p1, Laoh;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v0, p0, Laoe;->a:Ldac;

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
