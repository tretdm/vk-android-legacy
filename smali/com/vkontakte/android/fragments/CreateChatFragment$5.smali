.class Lcom/vkontakte/android/fragments/CreateChatFragment$5;
.super Ljava/lang/Object;
.source "CreateChatFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/CreateChatFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$5;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 148
    .local v0, "ns":Z
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$5;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/CreateChatFragment;->access$0(Lcom/vkontakte/android/fragments/CreateChatFragment;)Lcom/vkontakte/android/FriendsView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/FriendsView;->updateFilter(Ljava/lang/String;)V

    .line 149
    return v1

    .end local v0    # "ns":Z
    :cond_0
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method
