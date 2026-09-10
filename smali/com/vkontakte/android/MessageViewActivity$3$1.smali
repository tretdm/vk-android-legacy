.class Lcom/vkontakte/android/MessageViewActivity$3$1;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageViewActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/MessageViewActivity$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$3$1;->this$1:Lcom/vkontakte/android/MessageViewActivity$3;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$3$1;->this$1:Lcom/vkontakte/android/MessageViewActivity$3;

    invoke-static {v0}, Lcom/vkontakte/android/MessageViewActivity$3;->access$0(Lcom/vkontakte/android/MessageViewActivity$3;)Lcom/vkontakte/android/MessageViewActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/MessageViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
