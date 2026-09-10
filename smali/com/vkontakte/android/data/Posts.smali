.class public Lcom/vkontakte/android/data/Posts;
.super Ljava/lang/Object;
.source "Posts.java"


# static fields
.field public static final ACTION_NEW_POST_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.NEW_POST_ADDED"

.field public static final ACTION_POST_DELETED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_DELETED"

.field public static final ACTION_POST_REPLACED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_REPLACED"

.field public static final ACTION_POST_UPDATED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_UPDATED"

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
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
