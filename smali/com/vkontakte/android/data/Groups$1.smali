.class Lcom/vkontakte/android/data/Groups$1;
.super Ljava/lang/Object;
.source "Groups.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Groups;->reload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$forceNetwork:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/vkontakte/android/data/Groups$1;->val$forceNetwork:Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    iget-boolean v1, p0, Lcom/vkontakte/android/data/Groups$1;->val$forceNetwork:Z

    if-nez v1, :cond_0

    .line 35
    invoke-static {}, Lcom/vkontakte/android/cache/GroupsCache;->get()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/data/Groups$1;->val$forceNetwork:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 38
    :cond_1
    new-instance v1, Lcom/vkontakte/android/api/GroupsGet;

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/GroupsGet;-><init>(I)V

    .line 39
    new-instance v2, Lcom/vkontakte/android/data/Groups$1$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/data/Groups$1$1;-><init>(Lcom/vkontakte/android/data/Groups$1;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/GroupsGet;->setCallback(Lcom/vkontakte/android/api/GroupsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 61
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$1()Lcom/vkontakte/android/SearchIndexer;

    move-result-object v1

    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$0()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 62
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$1()Lcom/vkontakte/android/SearchIndexer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 63
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.GROUP_LIST_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    return-void

    .line 59
    :cond_2
    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->access$2(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
