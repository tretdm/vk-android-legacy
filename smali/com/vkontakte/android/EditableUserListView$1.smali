.class Lcom/vkontakte/android/EditableUserListView$1;
.super Ljava/lang/Object;
.source "EditableUserListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EditableUserListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EditableUserListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EditableUserListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EditableUserListView$1;->this$0:Lcom/vkontakte/android/EditableUserListView;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkontakte/android/EditableUserListView$1;->this$0:Lcom/vkontakte/android/EditableUserListView;

    invoke-static {v0}, Lcom/vkontakte/android/EditableUserListView;->access$0(Lcom/vkontakte/android/EditableUserListView;)Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/vkontakte/android/EditableUserListView$1;->this$0:Lcom/vkontakte/android/EditableUserListView;

    invoke-static {v0}, Lcom/vkontakte/android/EditableUserListView;->access$0(Lcom/vkontakte/android/EditableUserListView;)Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    invoke-interface {v1, v0}, Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;->onUserRemoved(Lcom/vkontakte/android/UserProfile;)V

    .line 16
    :cond_0
    return-void
.end method
