.class Lcom/vkontakte/android/StickerManagerActivity$2;
.super Ljava/lang/Object;
.source "StickerManagerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ReorderableListView$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StickerManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StickerManagerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StickerManagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity$2;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragDrop(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v6, -0x1

    .line 92
    const/4 v1, -0x1

    .line 93
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$2;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 99
    :goto_1
    if-eq v1, v6, :cond_0

    .line 100
    if-nez v1, :cond_3

    .line 101
    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$2;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    long-to-int v4, p1

    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$2;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    iget v2, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v3, v4, v2, v6}, Lcom/vkontakte/android/StickerManagerActivity;->access$8(Lcom/vkontakte/android/StickerManagerActivity;III)V

    .line 106
    :cond_0
    :goto_2
    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$2;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    iget v2, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 95
    move v1, v0

    .line 96
    goto :goto_1

    .line 93
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$2;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    long-to-int v4, p1

    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$2;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    iget v2, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v3, v4, v6, v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$8(Lcom/vkontakte/android/StickerManagerActivity;III)V

    goto :goto_2
.end method

.method public onDragStart(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$2;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 88
    :goto_1
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$2;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    iget v1, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$2;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v1, v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$7(Lcom/vkontakte/android/StickerManagerActivity;I)V

    goto :goto_1

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
