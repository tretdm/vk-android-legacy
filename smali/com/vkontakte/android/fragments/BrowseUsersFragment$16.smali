.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$16;
.super Ljava/lang/Object;
.source "BrowseUsersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BrowseUsersFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$16;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$16;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$11(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$16;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$11(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;->notifyDataSetChanged()V

    .line 558
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$16;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$7(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    goto :goto_0
.end method
