.class Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter$1;
.super Ljava/lang/Object;
.source "NewsfeedBanlistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->getView(IILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter$1;->this$1:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter$1;->this$1:Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    iget-object v1, v0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$600(Lcom/vkontakte/android/NewsfeedBanlistActivity;I)V

    .line 191
    return-void
.end method
