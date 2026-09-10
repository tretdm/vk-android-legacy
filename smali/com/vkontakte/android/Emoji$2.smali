.class Lcom/vkontakte/android/Emoji$2;
.super Ljava/lang/Object;
.source "Emoji.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Emoji;->loadPageAsync(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$page:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/Emoji$2;->val$page:I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget v0, p0, Lcom/vkontakte/android/Emoji$2;->val$page:I

    invoke-static {v0}, Lcom/vkontakte/android/Emoji;->access$6(I)Landroid/graphics/Bitmap;

    .line 164
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$7()[Z

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/Emoji$2;->val$page:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 165
    return-void
.end method
