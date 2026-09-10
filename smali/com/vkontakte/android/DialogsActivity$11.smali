.class Lcom/vkontakte/android/DialogsActivity$11;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->doLoadNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 548
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iput-boolean v3, v0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    .line 549
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 550
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 3
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    const/4 v2, 0x0

    .line 536
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 537
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iput-boolean v2, v1, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    invoke-static {v0, v2}, Lcom/vkontakte/android/DialogsActivity;->access$11(Lcom/vkontakte/android/DialogsActivity;Z)V

    .line 538
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$12(Lcom/vkontakte/android/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/DialogsActivity;->access$11(Lcom/vkontakte/android/DialogsActivity;Z)V

    .line 540
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/DialogsActivity;->access$13(Lcom/vkontakte/android/DialogsActivity;Z)V

    .line 541
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$14(Lcom/vkontakte/android/DialogsActivity;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$11;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 544
    return-void
.end method
