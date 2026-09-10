.class public Lcom/vkontakte/android/EditableUserListView;
.super Lcom/vkontakte/android/UserListView;
.source "EditableUserListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/EditableUserListView$EditableUserAdapter;,
        Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;

.field private removeClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_type"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 11
    new-instance v0, Lcom/vkontakte/android/EditableUserListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EditableUserListView$1;-><init>(Lcom/vkontakte/android/EditableUserListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/EditableUserListView;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/EditableUserListView;)Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkontakte/android/EditableUserListView;->listener:Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/EditableUserListView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/vkontakte/android/EditableUserListView;->removeClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/vkontakte/android/EditableUserListView$EditableUserAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EditableUserListView$EditableUserAdapter;-><init>(Lcom/vkontakte/android/EditableUserListView;)V

    return-object v0
.end method

.method public removeUser(Lcom/vkontakte/android/UserProfile;)V
    .locals 1
    .param p1, "u"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/EditableUserListView;->users:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p0}, Lcom/vkontakte/android/EditableUserListView;->updateList()V

    .line 35
    return-void
.end method

.method public setOnUserRemovedListener(Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkontakte/android/EditableUserListView;->listener:Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;

    .line 30
    return-void
.end method
