.class public Lcom/vkontakte/android/data/Posts;
.super Ljava/lang/Object;
.source "Posts.java"


# static fields
.field public static final ACTION_NEW_POST_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.NEW_POST_ADDED"

.field public static final ACTION_POST_DELETED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_DELETED"

.field public static final ACTION_POST_REPLACED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_REPLACED"

.field public static final ACTION_POST_UPDATED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_UPDATED"

.field public static final ACTION_RELOAD_FEED:Ljava/lang/String; = "com.vkontakte.android.RELOAD_FEED"

.field public static final ACTION_USER_NAME_CHANGED:Ljava/lang/String; = "com.vkontakte.android.USER_NAME_CHANGED"

.field public static final ACTION_USER_PHOTO_CHANGED:Ljava/lang/String; = "com.vkontakte.android.USER_PHOTO_CHANGED"

.field public static feed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static feedFrom:Ljava/lang/String;

.field public static feedItem:I

.field public static feedItemOffset:I

.field public static feedOffset:I

.field public static newNews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static preloadedFeed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Posts;->newNews:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static publishPostponed(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "runAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    new-instance v0, Lcom/vkontakte/android/api/WallPost;

    iget v1, p0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v2, p0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/WallPost;-><init>(II)V

    .line 46
    new-instance v1, Lcom/vkontakte/android/data/Posts$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/data/Posts$1;-><init>(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallPost;->setCallback(Lcom/vkontakte/android/api/WallPost$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 73
    return-void
.end method
