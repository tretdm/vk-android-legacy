.class Lcom/vkontakte/android/VideoListView$1;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/VideoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 93
    .local v4, "pos":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "opts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v6, "comments"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v6}, Lcom/vkontakte/android/VideoListView;->access$000(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/api/VideoFile;

    .line 97
    .local v5, "vf":Lcom/vkontakte/android/api/VideoFile;
    iget v6, v5, Lcom/vkontakte/android/api/VideoFile;->oid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v7, :cond_2

    iget v6, v5, Lcom/vkontakte/android/api/VideoFile;->oid:I

    if-gez v6, :cond_3

    iget v6, v5, Lcom/vkontakte/android/api/VideoFile;->oid:I

    neg-int v6, v6

    invoke-static {v6}, Lcom/vkontakte/android/data/Groups;->getAdminLevel(I)I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_3

    .line 98
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d009d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v6, "delete"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_3
    iget v6, v5, Lcom/vkontakte/android/api/VideoFile;->oid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v7, :cond_4

    .line 102
    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v6, "add"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d008d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v6, "link"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    if-ltz v4, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v6}, Lcom/vkontakte/android/VideoListView;->access$000(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 110
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-ge v6, v7, :cond_5

    .line 111
    new-instance v7, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    new-instance v8, Lcom/vkontakte/android/VideoListView$1$1;

    invoke-direct {v8, p0, v0, v5}, Lcom/vkontakte/android/VideoListView$1$1;-><init>(Lcom/vkontakte/android/VideoListView$1;Ljava/util/ArrayList;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v7, v6, v8}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 129
    :cond_5
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v6, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 130
    .local v3, "pm":Landroid/widget/PopupMenu;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 131
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v7, v8, v1, v8, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_6
    new-instance v6, Lcom/vkontakte/android/VideoListView$1$2;

    invoke-direct {v6, p0, v0, v5}, Lcom/vkontakte/android/VideoListView$1$2;-><init>(Lcom/vkontakte/android/VideoListView$1;Ljava/util/ArrayList;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v3, v6}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 149
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0
.end method
