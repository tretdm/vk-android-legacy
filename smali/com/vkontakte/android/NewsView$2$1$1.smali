.class Lcom/vkontakte/android/NewsView$2$1$1;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedAddBan$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/NewsView$2$1;

.field private final synthetic val$sid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView$2$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$2$1$1;->this$2:Lcom/vkontakte/android/NewsView$2$1;

    iput p2, p0, Lcom/vkontakte/android/NewsView$2$1$1;->val$sid:I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$2$1$1;->this$2:Lcom/vkontakte/android/NewsView$2$1;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$2$1;->access$0(Lcom/vkontakte/android/NewsView$2$1;)Lcom/vkontakte/android/NewsView$2;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$2;->access$0(Lcom/vkontakte/android/NewsView$2;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    return-void
.end method

.method public success()V
    .locals 5

    .prologue
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$2$1$1;->this$2:Lcom/vkontakte/android/NewsView$2$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$2$1;->access$0(Lcom/vkontakte/android/NewsView$2$1;)Lcom/vkontakte/android/NewsView$2;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$2;->access$0(Lcom/vkontakte/android/NewsView$2;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$2$1$1;->this$2:Lcom/vkontakte/android/NewsView$2$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$2$1;->access$0(Lcom/vkontakte/android/NewsView$2$1;)Lcom/vkontakte/android/NewsView$2;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$2;->access$0(Lcom/vkontakte/android/NewsView$2;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v2, p0, Lcom/vkontakte/android/NewsView$2$1$1;->val$sid:I

    if-lez v2, :cond_3

    const v2, 0x7f0901f8

    :goto_2
    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 157
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$2$1$1;->this$2:Lcom/vkontakte/android/NewsView$2$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$2$1;->access$0(Lcom/vkontakte/android/NewsView$2$1;)Lcom/vkontakte/android/NewsView$2;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$2;->access$0(Lcom/vkontakte/android/NewsView$2;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 158
    return-void

    .line 150
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 151
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    iget v4, p0, Lcom/vkontakte/android/NewsView$2$1$1;->val$sid:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 154
    .restart local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$2$1$1;->this$2:Lcom/vkontakte/android/NewsView$2$1;

    invoke-static {v3}, Lcom/vkontakte/android/NewsView$2$1;->access$0(Lcom/vkontakte/android/NewsView$2$1;)Lcom/vkontakte/android/NewsView$2;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/NewsView$2;->access$0(Lcom/vkontakte/android/NewsView$2;)Lcom/vkontakte/android/NewsView;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_3
    const v2, 0x7f0901f9

    goto :goto_2
.end method
