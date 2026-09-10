.class Lcom/vkontakte/android/data/Groups$1$1;
.super Ljava/lang/Object;
.source "Groups.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Groups$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/Groups$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Groups$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Groups$1$1;->this$1:Lcom/vkontakte/android/data/Groups$1;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/vkontakte/android/cache/GroupsCache;->get()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$1()Lcom/vkontakte/android/SearchIndexer;

    move-result-object v0

    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$0()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 54
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$1()Lcom/vkontakte/android/SearchIndexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 55
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 42
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-static {p1}, Lcom/vkontakte/android/cache/GroupsCache;->replace(Ljava/util/List;)V

    .line 45
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$1()Lcom/vkontakte/android/SearchIndexer;

    move-result-object v0

    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$0()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 46
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->access$1()Lcom/vkontakte/android/SearchIndexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 47
    return-void
.end method
