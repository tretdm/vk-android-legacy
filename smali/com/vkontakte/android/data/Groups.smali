.class public Lcom/vkontakte/android/data/Groups;
.super Ljava/lang/Object;
.source "Groups.java"


# static fields
.field public static final ACTION_GROUP_INVITES_CHANGED:Ljava/lang/String; = "com.vkontakte.android.GROUP_INVITES_CHANGED"

.field public static final ACTION_GROUP_LIST_CHANGED:Ljava/lang/String; = "com.vkontakte.android.GROUP_LIST_CHANGED"

.field private static groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private static index:Lcom/vkontakte/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/SearchIndexer",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Groups;->groups:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Groups;->index:Lcom/vkontakte/android/SearchIndexer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/vkontakte/android/data/Groups;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1()Lcom/vkontakte/android/SearchIndexer;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/vkontakte/android/data/Groups;->index:Lcom/vkontakte/android/SearchIndexer;

    return-object v0
.end method

.method static synthetic access$2(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/vkontakte/android/data/Groups;->groups:Ljava/util/ArrayList;

    return-void
.end method

.method public static getAdminLevel(I)I
    .locals 3
    .param p0, "gid"    # I

    .prologue
    .line 105
    sget-object v1, Lcom/vkontakte/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 105
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 106
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget v2, v0, Lcom/vkontakte/android/api/Group;->id:I

    if-ne v2, p0, :cond_0

    iget v1, v0, Lcom/vkontakte/android/api/Group;->adminLevel:I

    goto :goto_0
.end method

.method public static getAdminedGroups(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    sget-object v1, Lcom/vkontakte/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    return-void

    .line 73
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 74
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget-boolean v2, v0, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getById(I)Lcom/vkontakte/android/api/Group;
    .locals 3
    .param p0, "gid"    # I

    .prologue
    .line 96
    sget-object v1, Lcom/vkontakte/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 97
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget v2, v0, Lcom/vkontakte/android/api/Group;->id:I

    if-ne v2, p0, :cond_0

    goto :goto_0
.end method

.method public static getGroups(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    sget-object v0, Lcom/vkontakte/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    return-void
.end method

.method public static isGroupAdmin(I)Z
    .locals 4
    .param p0, "gid"    # I

    .prologue
    .line 86
    sget-object v1, Lcom/vkontakte/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 86
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 87
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget v2, v0, Lcom/vkontakte/android/api/Group;->id:I

    if-ne v2, p0, :cond_0

    .line 88
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is group admin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-boolean v1, v0, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    goto :goto_0
.end method

.method public static isGroupMember(I)Z
    .locals 3
    .param p0, "gid"    # I

    .prologue
    .line 79
    sget-object v1, Lcom/vkontakte/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 80
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget v2, v0, Lcom/vkontakte/android/api/Group;->id:I

    if-ne v2, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static reload(Z)V
    .locals 3
    .param p0, "forceNetwork"    # Z

    .prologue
    .line 30
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RELOAD GROUPS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/vkontakte/android/data/Groups$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/data/Groups$1;-><init>(Z)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/vkontakte/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    new-instance v0, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Groups;->index:Lcom/vkontakte/android/SearchIndexer;

    .line 114
    return-void
.end method

.method public static resultFromApi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "resp"    # Lorg/json/JSONObject;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 122
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->reload(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static search(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "q"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/vkontakte/android/data/Groups;->index:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
