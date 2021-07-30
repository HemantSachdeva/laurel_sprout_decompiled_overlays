.class public Lcom/google/wireless/gdata/data/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# instance fields
.field private author:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private categoryScheme:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private deleted:Z

.field private editUri:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private htmlUri:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private publicationDate:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->id:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->title:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->editUri:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->htmlUri:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->summary:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->content:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->author:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->email:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->category:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->publicationDate:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->updateDate:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/google/wireless/gdata/data/Entry;->deleted:Z

    return-void
.end method


# virtual methods
.method protected appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 233
    invoke-static {p3}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ": "

    .line 235
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\n"

    .line 237
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->id:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->title:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->editUri:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->htmlUri:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->summary:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->content:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->author:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->email:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->category:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->categoryScheme:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->publicationDate:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->updateDate:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/google/wireless/gdata/data/Entry;->deleted:Z

    return-void
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->author:Ljava/lang/String;

    return-object p0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->category:Ljava/lang/String;

    return-object p0
.end method

.method public getCategoryScheme()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->categoryScheme:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getEditUri()Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->editUri:Ljava/lang/String;

    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->email:Ljava/lang/String;

    return-object p0
.end method

.method public getHtmlUri()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->htmlUri:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->publicationDate:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->summary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/google/wireless/gdata/data/Entry;->updateDate:Ljava/lang/String;

    return-object p0
.end method

.method public isDeleted()Z
    .locals 0

    .line 213
    iget-boolean p0, p0, Lcom/google/wireless/gdata/data/Entry;->deleted:Z

    return p0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->author:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->category:Ljava/lang/String;

    return-void
.end method

.method public setCategoryScheme(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->categoryScheme:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->content:Ljava/lang/String;

    return-void
.end method

.method public setDeleted(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/google/wireless/gdata/data/Entry;->deleted:Z

    return-void
.end method

.method public setEditUri(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->editUri:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->email:Ljava/lang/String;

    return-void
.end method

.method public setHtmlUri(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->htmlUri:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->id:Ljava/lang/String;

    return-void
.end method

.method public setPublicationDate(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->publicationDate:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Entry;->updateDate:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->id:Ljava/lang/String;

    const-string v1, "ID"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->title:Ljava/lang/String;

    const-string v1, "TITLE"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->editUri:Ljava/lang/String;

    const-string v1, "EDIT URI"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->htmlUri:Ljava/lang/String;

    const-string v1, "HTML URI"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->summary:Ljava/lang/String;

    const-string v1, "SUMMARY"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->content:Ljava/lang/String;

    const-string v1, "CONTENT"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->author:Ljava/lang/String;

    const-string v1, "AUTHOR"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->category:Ljava/lang/String;

    const-string v1, "CATEGORY"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->categoryScheme:Ljava/lang/String;

    const-string v1, "CATEGORY SCHEME"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->publicationDate:Ljava/lang/String;

    const-string v1, "PUBLICATION DATE"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Entry;->updateDate:Ljava/lang/String;

    const-string v1, "UPDATE DATE"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-boolean v0, p0, Lcom/google/wireless/gdata/data/Entry;->deleted:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETED"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/wireless/gdata/data/Entry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    return-void
.end method
