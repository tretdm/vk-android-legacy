.class Lcom/vkontakte/android/fragments/NewsFragment$15;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsFragment;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment;I)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$15;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/NewsFragment$15;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$15;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/NewsFragment;->onError(ILjava/lang/String;)V

    .line 616
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "newFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    const/4 v0, 0x1

    .line 606
    iget v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$15;->val$offset:I

    if-nez v1, :cond_0

    .line 607
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/vkontakte/android/cache/NewsfeedCache;->replace(Ljava/util/List;Landroid/content/Context;)V

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$15;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1, p2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$1202(Lcom/vkontakte/android/fragments/NewsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 610
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$15;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/vkontakte/android/fragments/NewsFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 611
    return-void

    .line 610
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
