.class Lcom/vkontakte/android/fragments/GroupListFragment$4;
.super Ljava/lang/Object;
.source "GroupListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupListFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$4;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$4;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$3(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$4;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->access$3(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;->notifyDataSetChanged()V

    .line 158
    :cond_0
    return-void
.end method
