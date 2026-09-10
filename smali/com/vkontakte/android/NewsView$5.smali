.class Lcom/vkontakte/android/NewsView$5;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->addHeaderViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$8(Lcom/vkontakte/android/NewsView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return v2

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView;->access$8(Lcom/vkontakte/android/NewsView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsView;->access$9(Lcom/vkontakte/android/NewsView;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$10(Lcom/vkontakte/android/NewsView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$10(Lcom/vkontakte/android/NewsView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v3, v0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->updateList2()V

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$11(Lcom/vkontakte/android/NewsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->unfocusSearchField()V

    goto :goto_0
.end method
