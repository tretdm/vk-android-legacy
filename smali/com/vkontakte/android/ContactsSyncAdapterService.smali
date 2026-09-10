.class public Lcom/vkontakte/android/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;,
        Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;,
        Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;,
        Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static lastSyncTime:J

.field private static needCancel:Z

.field private static needPausePhotoDownload:Z

.field private static numDlThreads:I

.field private static photoDownloadLock:Ljava/lang/Object;

.field private static resolver:Landroid/content/ContentResolver;

.field private static success:Z

.field private static syncAdapter:Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

.field private static tries:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->lastSyncTime:J

    .line 39
    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needCancel:Z

    .line 41
    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->success:Z

    .line 43
    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needPausePhotoDownload:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->photoDownloadLock:Ljava/lang/Object;

    .line 45
    sput v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 614
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/content/ContentProviderClient;
    .param p5, "x5"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static/range {p0 .. p5}, Lcom/vkontakte/android/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 34
    sput-boolean p0, Lcom/vkontakte/android/ContactsSyncAdapterService;->needCancel:Z

    return p0
.end method

.method static synthetic access$200(Lorg/json/JSONObject;)Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0}, Lcom/vkontakte/android/ContactsSyncAdapterService;->getProfile(Lorg/json/JSONObject;)Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 34
    sput-boolean p0, Lcom/vkontakte/android/ContactsSyncAdapterService;->success:Z

    return p0
.end method

.method static synthetic access$410()I
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->tries:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/vkontakte/android/ContactsSyncAdapterService;->tries:I

    return v0
.end method

.method static synthetic access$608()I
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    return v0
.end method

.method static synthetic access$610()I
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->needPausePhotoDownload:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->photoDownloadLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static addOrUpdateContact(Landroid/content/Context;Landroid/accounts/Account;Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;Landroid/content/SyncStats;Ljava/util/ArrayList;Ljava/util/Vector;)Z
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "p"    # Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    .param p3, "stats"    # Landroid/content/SyncStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;",
            "Landroid/content/SyncStats;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 365
    .local p4, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p5, "photoUpdates":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    const/16 v27, 0x0

    .local v27, "update":Z
    const/16 v23, 0x1

    .local v23, "photoChanged":Z
    const/16 v20, 0x1

    .local v20, "nameChanged":Z
    const/4 v8, 0x1

    .local v8, "bdateChanged":Z
    const/16 v21, 0x1

    .line 366
    .local v21, "phoneChanged":Z
    const/16 v24, 0x0

    .local v24, "photoExists":Z
    const/4 v9, 0x0

    .local v9, "bdateExists":Z
    const/16 v22, 0x0

    .line 367
    .local v22, "phoneExists":Z
    const/16 v28, 0x0

    .local v28, "updateContactID":I
    const/16 v18, -0x1

    .line 369
    .local v18, "existingPhotoID":I
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    .line 370
    .local v17, "dataUri":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 372
    .local v19, "hasIm":Z
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_type=\'com.vkontakte.account\' AND sync1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 373
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 374
    const/16 v27, 0x1

    .line 375
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 376
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 377
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' already exists, updating, ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mimetype"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data_sync1"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "data1"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "data2"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "data3"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 379
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 380
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 383
    :cond_0
    :try_start_0
    const-string v2, "mimetype"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 384
    .local v26, "type":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 385
    const-string v2, "data_sync1"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 386
    .local v15, "curPhoto":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v23, 0x1

    .line 387
    :goto_0
    const/16 v24, 0x1

    .line 388
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 405
    .end local v15    # "curPhoto":Ljava/lang/String;
    .end local v26    # "type":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    :cond_2
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_3
    if-nez v27, :cond_4

    .line 410
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist, creating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_4
    const/16 v29, 0x0

    .line 417
    .local v29, "valueBack":I
    if-nez v27, :cond_5

    .line 418
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 419
    .local v10, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "account_name"

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 420
    const-string v2, "account_type"

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 421
    const-string v2, "sync1"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 422
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v29, v2, -0x1

    .line 424
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New insert, valueBack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    if-eqz v20, :cond_6

    .line 428
    if-nez v27, :cond_15

    .line 429
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 430
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 435
    :goto_2
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 436
    const-string v2, "data2"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 437
    const-string v2, "data3"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 438
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    const-string v2, "vk"

    const-string v3, "Updating name"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_6
    if-eqz v23, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->photo:Ljava/lang/String;

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 443
    new-instance v25, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;-><init>(Lcom/vkontakte/android/ContactsSyncAdapterService$1;)V

    .line 444
    .local v25, "r":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    move-object/from16 v0, p2

    iget v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    move-object/from16 v0, v25

    iput v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->uid:I

    .line 445
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    .line 446
    move/from16 v0, v18

    move-object/from16 v1, v25

    iput v0, v1, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->existingID:I

    .line 447
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 448
    const-string v2, "vk"

    const-string v3, "Updating photo"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .end local v25    # "r":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    :cond_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, "null"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    if-eqz v21, :cond_8

    .line 470
    if-nez v27, :cond_16

    .line 471
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 472
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 482
    :goto_3
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 483
    const-string v2, "data1"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 484
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 485
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    const-string v2, "vk"

    const-string v3, "Updating phone"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_8
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    if-eqz v2, :cond_9

    if-eqz v8, :cond_9

    .line 490
    if-nez v27, :cond_18

    .line 491
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 492
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 500
    :goto_4
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 501
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 502
    const-string v2, "data1"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 503
    const-string v2, "data2"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 504
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    const-string v2, "vk"

    const-string v3, "Updating bdate"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_9
    if-nez v27, :cond_a

    .line 509
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 510
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 511
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/vnd.com.vkontakte.android.profile"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 512
    const-string v2, "data1"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 513
    const-string v2, "data2"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 514
    const-string v2, "data3"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 515
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_a
    if-nez v19, :cond_b

    .line 519
    if-nez v27, :cond_1a

    .line 520
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 521
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 526
    :goto_5
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/vnd.com.vkontakte.android.sendmsg"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 527
    const-string v2, "data1"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 528
    const-string v2, "data2"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 529
    const-string v2, "data3"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 530
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_b
    if-eqz v27, :cond_1b

    move-object/from16 v0, p3

    iget-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p3

    iput-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    .line 535
    :goto_6
    move-object/from16 v0, p3

    iget-wide v2, v0, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p3

    iput-wide v2, v0, Landroid/content/SyncStats;->numEntries:J

    .line 537
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added/updated contact: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const/4 v2, 0x1

    return v2

    .line 386
    .end local v29    # "valueBack":I
    .restart local v15    # "curPhoto":Ljava/lang/String;
    .restart local v26    # "type":Ljava/lang/String;
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 389
    .end local v15    # "curPhoto":Ljava/lang/String;
    :cond_d
    :try_start_1
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 390
    const-string v2, "data2"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 391
    .local v12, "curFName":Ljava/lang/String;
    const-string v2, "data3"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 392
    .local v13, "curLName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    const/16 v20, 0x1

    .line 393
    :goto_7
    goto/16 :goto_1

    .line 392
    :cond_f
    const/16 v20, 0x0

    goto :goto_7

    .line 393
    .end local v12    # "curFName":Ljava/lang/String;
    .end local v13    # "curLName":Ljava/lang/String;
    :cond_10
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 394
    const-string v2, "data1"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 395
    .local v14, "curPhone":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v21, 0x1

    .line 396
    :goto_8
    const/16 v22, 0x1

    .line 397
    goto/16 :goto_1

    .line 395
    :cond_11
    const/16 v21, 0x0

    goto :goto_8

    .line 397
    .end local v14    # "curPhone":Ljava/lang/String;
    :cond_12
    const-string v2, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 398
    const-string v2, "data1"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 399
    .local v11, "curBdate":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v8, 0x1

    .line 400
    :goto_9
    const/4 v9, 0x1

    .line 401
    goto/16 :goto_1

    .line 399
    :cond_13
    const/4 v8, 0x0

    goto :goto_9

    .line 401
    .end local v11    # "curBdate":Ljava/lang/String;
    :cond_14
    const-string v2, "vnd.android.cursor.item/vnd.com.vkontakte.android.sendmsg"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 432
    .end local v26    # "type":Ljava/lang/String;
    .restart local v29    # "valueBack":I
    :cond_15
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 433
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_2

    .line 474
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_16
    if-nez v22, :cond_17

    .line 475
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 476
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_3

    .line 478
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_17
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 479
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_3

    .line 493
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_18
    if-nez v9, :cond_19

    .line 494
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 495
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_4

    .line 497
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_19
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 498
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_4

    .line 523
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_1a
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 524
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_5

    .line 534
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_1b
    move-object/from16 v0, p3

    iget-wide v2, v0, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p3

    iput-wide v2, v0, Landroid/content/SyncStats;->numInserts:J

    goto/16 :goto_6

    .line 404
    .end local v29    # "valueBack":I
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public static getLocalPhoneNumbers(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "account_type"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 558
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 559
    :cond_0
    const-string v0, "vk"

    const-string v1, "cursor.getCount = 0 || cursor==null"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const/4 v12, 0x0

    .line 596
    :goto_0
    return-object v12

    .line 562
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v11, "idsToGet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 565
    :cond_2
    const-string v0, "com.vkontakte.account"

    const-string v1, "account_type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 566
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 571
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 572
    const-string v0, "vk"

    const-string v1, "idsToGet.size = 0"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v12, 0x0

    goto :goto_0

    .line 575
    :cond_4
    const-string v10, ""

    .line 576
    .local v10, "ids":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 577
    .local v8, "id":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 579
    .end local v8    # "id":J
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 581
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v12, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 584
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "data1"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data2=2 AND raw_contact_id IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 586
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 587
    :cond_6
    const-string v0, "vk"

    const-string v1, "cursor2.getCount = 0"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 590
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 593
    :cond_8
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 595
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static getLocalUids()Ljava/util/Vector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 351
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 352
    .local v7, "ret":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "sync1"

    aput-object v5, v2, v3

    const-string v3, "account_type=\'com.vkontakte.account\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 353
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 354
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 356
    :cond_0
    const-string v0, "sync1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_2
    return-object v7
.end method

.method private static getProfile(Lorg/json/JSONObject;)Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    .locals 14
    .param p0, "user"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 90
    new-instance v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;

    invoke-direct {v7}, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;-><init>()V

    .line 91
    .local v7, "up":Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    const-string v8, "id"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    .line 92
    const-string v8, "first_name"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->firstName:Ljava/lang/String;

    .line 93
    const-string v8, "last_name"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->lastName:Ljava/lang/String;

    .line 94
    const-string v8, "photo_200"

    const-string v9, "photo_medium_rec"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->photo:Ljava/lang/String;

    .line 95
    iput-object v13, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    .line 96
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 97
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    .line 108
    :cond_0
    :goto_0
    const-string v8, "nickname"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->nickname:Ljava/lang/String;

    .line 109
    const-string v8, "bdate"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 110
    const-string v8, "bdate"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "bd":[Ljava/lang/String;
    array-length v8, v1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v11

    invoke-static {v9}, Lcom/vkontakte/android/ContactsSyncAdapterService;->zInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v10

    invoke-static {v9}, Lcom/vkontakte/android/ContactsSyncAdapterService;->zInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    .line 113
    :cond_1
    array-length v8, v1

    if-ne v8, v12, :cond_2

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0000-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v11

    invoke-static {v9}, Lcom/vkontakte/android/ContactsSyncAdapterService;->zInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v10

    invoke-static {v9}, Lcom/vkontakte/android/ContactsSyncAdapterService;->zInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    .line 117
    .end local v1    # "bd":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v7

    .line 98
    :cond_3
    const-string v8, "mobile_phone"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 99
    const-string v8, "mobile_phone"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "ph":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 101
    .local v5, "pc":[C
    const-string v6, ""

    .line 102
    move-object v0, v5

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v2, v0, v3

    .line 103
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0x2b

    if-ne v2, v8, :cond_5

    .line 104
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 106
    .end local v2    # "c":C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    iput-object v6, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    goto/16 :goto_0

    .line 116
    .end local v0    # "arr$":[C
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pc":[C
    .end local v6    # "ph":Ljava/lang/String;
    :cond_7
    iput-object v13, v7, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    goto :goto_1
.end method

.method private getSyncAdapter()Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->syncAdapter:Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->syncAdapter:Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 81
    :cond_0
    sget-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->syncAdapter:Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

    return-object v0
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 36
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    .line 124
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performSync: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 128
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->clear()V

    .line 129
    const/4 v2, 0x0

    move-object/from16 v0, p5

    iput-boolean v2, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v8, Lcom/vkontakte/android/ContactsSyncAdapterService;->lastSyncTime:J

    sub-long/2addr v2, v8

    const-wide/32 v8, 0x493e0

    cmp-long v2, v2, v8

    if-gez v2, :cond_1

    .line 133
    const-string v2, "vk"

    const-string v3, "too many retries"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 138
    .local v27, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "sid"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    const-string v2, "uid"

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/vkontakte/android/Global;->uid:I

    .line 140
    const-string v2, "sid"

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 141
    const-string v2, "secret"

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 142
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v2

    const-string v3, "vk_uid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    :cond_2
    const-string v2, "sync_all"

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 146
    .local v31, "syncAllFriends":Z
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 148
    .local v14, "contacts":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;>;"
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/vkontakte/android/ContactsSyncAdapterService;->getLocalPhoneNumbers(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v23

    .line 149
    .local v23, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v23, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 150
    :cond_3
    const-string v2, "vk"

    const-string v3, "No local numbers"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz v31, :cond_0

    .line 183
    :goto_1
    move-object/from16 v0, p5

    iget-boolean v2, v0, Landroid/content/SyncResult;->databaseError:Z

    if-nez v2, :cond_0

    .line 185
    if-eqz v31, :cond_6

    .line 186
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->success:Z

    .line 187
    const/4 v2, 0x3

    sput v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->tries:I

    .line 188
    :goto_2
    sget v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->tries:I

    if-lez v2, :cond_5

    sget-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->success:Z

    if-nez v2, :cond_5

    .line 189
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "friends.get"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v3, "fields"

    const-string v5, "photo_medium_rec,photo_200,bdate,contacts"

    invoke-virtual {v2, v3, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/ContactsSyncAdapterService$2;

    invoke-direct {v3, v14}, Lcom/vkontakte/android/ContactsSyncAdapterService$2;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 344
    .end local v14    # "contacts":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;>;"
    .end local v23    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27    # "prefs":Landroid/content/SharedPreferences;
    .end local v31    # "syncAllFriends":Z
    :catch_0
    move-exception v35

    .line 345
    .local v35, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    const/4 v2, 0x1

    move-object/from16 v0, p5

    iput-boolean v2, v0, Landroid/content/SyncResult;->databaseError:Z

    goto/16 :goto_0

    .line 154
    .end local v35    # "x":Ljava/lang/Exception;
    .restart local v14    # "contacts":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;>;"
    .restart local v23    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27    # "prefs":Landroid/content/SharedPreferences;
    .restart local v31    # "syncAllFriends":Z
    :cond_4
    :try_start_1
    const-string v2, ","

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v22

    .line 158
    .local v22, "ns":Ljava/lang/String;
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "friends.getByPhones"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->forceHTTPS(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    const-string v3, "fields"

    const-string v5, "photo_medium_rec,photo_200,bdate,contacts"

    invoke-virtual {v2, v3, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    const-string v3, "phones"

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/ContactsSyncAdapterService$1;

    move/from16 v0, v31

    move-object/from16 v1, p5

    invoke-direct {v3, v14, v0, v1}, Lcom/vkontakte/android/ContactsSyncAdapterService$1;-><init>(Ljava/util/Vector;ZLandroid/content/SyncResult;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_1

    .line 221
    .end local v22    # "ns":Ljava/lang/String;
    :cond_5
    sget-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->success:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p5

    iput-boolean v2, v0, Landroid/content/SyncResult;->databaseError:Z

    .line 224
    :cond_6
    move-object/from16 v0, p5

    iget-boolean v2, v0, Landroid/content/SyncResult;->databaseError:Z

    if-nez v2, :cond_0

    .line 226
    invoke-static {}, Lcom/vkontakte/android/ContactsSyncAdapterService;->getLocalUids()Ljava/util/Vector;

    move-result-object v20

    .line 227
    .local v20, "localUids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v21

    .line 229
    .local v21, "ls":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v6, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 231
    .local v7, "photoUpdates":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    new-instance v26, Ljava/util/Vector;

    invoke-direct/range {v26 .. v26}, Ljava/util/Vector;-><init>()V

    .line 233
    .local v26, "photoResults":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;

    .line 234
    .local v4, "p":Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/vkontakte/android/ContactsSyncAdapterService;->addOrUpdateContact(Landroid/content/Context;Landroid/accounts/Account;Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;Landroid/content/SyncStats;Ljava/util/ArrayList;Ljava/util/Vector;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 237
    const-string v2, "vk"

    const-string v3, "Update contact error!!!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_8
    iget v2, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_9

    .line 242
    const-string v2, "vk"

    const-string v3, "Applying DB changes!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 244
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 245
    const-string v2, "vk"

    const-string v3, "Contacts updated"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_9
    sget-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needCancel:Z

    if-eqz v2, :cond_7

    .line 248
    const-string v2, "vk"

    const-string v3, "need cancel!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needCancel:Z

    goto/16 :goto_0

    .line 254
    .end local v4    # "p":Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 255
    const-string v2, "vk"

    const-string v3, "Applying DB changes!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :try_start_2
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 263
    :try_start_3
    const-string v2, "vk"

    const-string v3, "Contacts updated"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_3
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will update "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " photos..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v33, "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_4
    const/4 v2, 0x5

    move/from16 v0, v18

    if-ge v0, v2, :cond_c

    .line 271
    new-instance v32, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;

    move-object/from16 v0, v26

    invoke-direct {v2, v7, v0}, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 272
    .local v32, "t":Ljava/lang/Thread;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Thread;->start()V

    .line 274
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Started DL thread #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 258
    .end local v18    # "i":I
    .end local v32    # "t":Ljava/lang/Thread;
    .end local v33    # "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    :catch_1
    move-exception v35

    .line 259
    .restart local v35    # "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "OH SHI~"

    move-object/from16 v0, v35

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    const/4 v2, 0x1

    move-object/from16 v0, p5

    iput-boolean v2, v0, Landroid/content/SyncResult;->databaseError:Z

    goto/16 :goto_0

    .line 265
    .end local v35    # "x":Ljava/lang/Exception;
    :cond_b
    const-string v2, "vk"

    const-string v3, "Nothing to update"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 278
    .restart local v18    # "i":I
    .restart local v33    # "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    :cond_c
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v5, "true"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 280
    .local v16, "dataUri":Landroid/net/Uri;
    :goto_5
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_d

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_d

    sget v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    if-lez v2, :cond_13

    .line 281
    :cond_d
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updates "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", results "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", threads "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_e

    sget v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    if-nez v2, :cond_12

    .line 283
    :cond_e
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needPausePhotoDownload:Z

    .line 284
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v25, "photoOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_f
    :goto_6
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_11

    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "res "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;

    .line 287
    .local v28, "r":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    move-object/from16 v0, v28

    iget v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->existingID:I

    if-lez v2, :cond_10

    .line 288
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v5, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->existingID:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data15"

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data_sync1"

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 294
    :cond_10
    sget-object v8, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v10, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    iget v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 295
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_f

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_f

    .line 296
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 297
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 298
    .local v29, "rawContactID":I
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 299
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data15"

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data_sync1"

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 308
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v28    # "r":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    .end local v29    # "rawContactID":I
    :cond_11
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " photos"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 310
    const-string v2, "vk"

    const-string v3, "Update done..."

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needPausePhotoDownload:Z

    .line 312
    sget-object v3, Lcom/vkontakte/android/ContactsSyncAdapterService;->photoDownloadLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 313
    :try_start_4
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->photoDownloadLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 314
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    .end local v25    # "photoOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_12
    const-wide/16 v2, 0xa

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_5

    .line 314
    .restart local v25    # "photoOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2

    .line 319
    .end local v25    # "photoOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_13
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v17, "delOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_15

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v2, v0, :cond_15

    .line 322
    const-string v34, ""

    .line 323
    .local v34, "uids":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .local v30, "s":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto :goto_7

    .line 324
    .end local v30    # "s":I
    :cond_14
    const/4 v2, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 325
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v3

    int-to-long v8, v3

    iput-wide v8, v2, Landroid/content/SyncStats;->numDeletes:J

    .line 326
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v5, "true"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_type=\'com.vkontakte.account\' AND sync1 IN ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v24

    .line 329
    .local v24, "op":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v24    # "op":Landroid/content/ContentProviderOperation;
    .end local v34    # "uids":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 335
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " contacts"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 337
    const-string v2, "vk"

    const-string v3, "OK!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_8
    const-string v2, "vk"

    const-string v3, "Sync done!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->lastSyncTime:J

    goto/16 :goto_0

    .line 339
    :cond_16
    const-string v2, "vk"

    const-string v3, "Nothing to delete"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_8
.end method

.method private static zInt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    .end local p0    # "i":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "ret":Landroid/os/IBinder;
    invoke-direct {p0}, Lcom/vkontakte/android/ContactsSyncAdapterService;->getSyncAdapter()Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 51
    return-object v0
.end method
