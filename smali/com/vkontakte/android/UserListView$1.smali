.class Lcom/vkontakte/android/UserListView$1;
.super Ljava/lang/Object;
.source "UserListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UserListView;->init()V
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
    iput-object p1, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-static {v0}, Lcom/vkontakte/android/UserListView;->access$0(Lcom/vkontakte/android/UserListView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$1;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 136
    return-void
.end method
