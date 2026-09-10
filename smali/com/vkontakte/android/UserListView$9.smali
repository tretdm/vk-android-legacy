.class Lcom/vkontakte/android/UserListView$9;
.super Ljava/lang/Object;
.source "UserListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UserListView;->invalidateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UserListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UserListView$9;->this$0:Lcom/vkontakte/android/UserListView;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$9;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-static {v0}, Lcom/vkontakte/android/UserListView;->access$3(Lcom/vkontakte/android/UserListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserListView$UserListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView$UserListAdapter;->notifyDataSetInvalidated()V

    .line 460
    return-void
.end method
