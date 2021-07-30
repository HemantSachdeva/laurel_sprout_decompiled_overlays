.class final Lcss;
.super Lctu;
.source "PG"


# instance fields
.field final synthetic a:Lctn;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lctn;)V
    .locals 0

    iput-object p2, p0, Lcss;->a:Lctn;

    .line 1
    invoke-direct {p0, p1}, Lctu;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcss;->a:Lctn;

    iget-object v0, v0, Lctn;->a:Lcto;

    iget-object v0, v0, Lcto;->b:Lcsx;

    iget-object v0, v0, Lcsx;->a:Lctp;

    invoke-virtual {v0, p1}, Lctp;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcsy;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
