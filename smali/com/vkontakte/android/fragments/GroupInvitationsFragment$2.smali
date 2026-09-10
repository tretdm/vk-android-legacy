.class Lcom/vkontakte/android/fragments/GroupInvitationsFragment$2;
.super Ljava/lang/Object;
.source "GroupInvitationsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$2;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$2;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$200(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$2;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->loadData()V

    .line 102
    :cond_0
    return-void
.end method
