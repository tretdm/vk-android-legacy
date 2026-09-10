.class Lcom/vkontakte/android/SearchUsersView$1;
.super Ljava/lang/Object;
.source "SearchUsersView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SearchUsersView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SearchUsersView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SearchUsersView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SearchUsersView$1;->this$0:Lcom/vkontakte/android/SearchUsersView;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$1;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0}, Lcom/vkontakte/android/SearchUsersView;->access$0(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$1;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-virtual {v0}, Lcom/vkontakte/android/SearchUsersView;->updateList()V

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$1;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SearchUsersView;->access$5(Lcom/vkontakte/android/SearchUsersView;Ljava/lang/String;)V

    .line 103
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
