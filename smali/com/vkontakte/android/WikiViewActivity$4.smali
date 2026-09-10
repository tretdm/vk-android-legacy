.class Lcom/vkontakte/android/WikiViewActivity$4;
.super Ljava/lang/Object;
.source "WikiViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PagesGetHTML$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WikiViewActivity;->loadPage(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WikiViewActivity;

.field private final synthetic val$oid:I

.field private final synthetic val$useHistory:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WikiViewActivity;ZI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$4;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/WikiViewActivity$4;->val$useHistory:Z

    iput p3, p0, Lcom/vkontakte/android/WikiViewActivity$4;->val$oid:I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$4;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WikiViewActivity;->access$5(Lcom/vkontakte/android/WikiViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$4;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/WikiViewActivity;->access$4(Lcom/vkontakte/android/WikiViewActivity;I)V

    .line 167
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$4;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/WikiViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$4;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/WikiViewActivity;->access$2(Lcom/vkontakte/android/WikiViewActivity;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$4;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WikiViewActivity;->access$5(Lcom/vkontakte/android/WikiViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-boolean v0, p0, Lcom/vkontakte/android/WikiViewActivity$4;->val$useHistory:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$4;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    iget v1, p0, Lcom/vkontakte/android/WikiViewActivity$4;->val$oid:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/vkontakte/android/WikiViewActivity;->access$3(Lcom/vkontakte/android/WikiViewActivity;IILjava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method
