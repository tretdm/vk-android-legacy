.class Lcom/vkontakte/android/PostAttachment$2;
.super Ljava/lang/Object;
.source "PostAttachment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostAttachment;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vkontakte/android/PostAttachment$2;->this$0:Lcom/vkontakte/android/PostAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "entry"

    iget-object v2, p0, Lcom/vkontakte/android/PostAttachment$2;->this$0:Lcom/vkontakte/android/PostAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PostAttachment;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    const-string v2, "PostViewFragment"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 69
    return-void
.end method
