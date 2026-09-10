.class public Lcom/vkontakte/android/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;,
        Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;,
        Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;,
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

    .line 37
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->lastSyncTime:J

    .line 38
    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needCancel:Z

    .line 40
    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->success:Z

    .line 42
    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needPausePhotoDownload:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->photoDownloadLock:Ljava/lang/Object;

    .line 44
    sput v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static/range {p0 .. p5}, Lcom/vkontakte/android/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 38
    sput-boolean p0, Lcom/vkontakte/android/ContactsSyncAdapterService;->needCancel:Z

    return-void
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    return v0
.end method

.method static synthetic access$3(I)V
    .locals 0

    .prologue
    .line 44
    sput p0, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    return-void
.end method

.method static synthetic access$4()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->needPausePhotoDownload:Z

    return v0
.end method

.method static synthetic access$5()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->photoDownloadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6(Lorg/json/JSONObject;)Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p0}, Lcom/vkontakte/android/ContactsSyncAdapterService;->getProfile(Lorg/json/JSONObject;)Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Z)V
    .locals 0

    .prologue
    .line 40
    sput-boolean p0, Lcom/vkontakte/android/ContactsSyncAdapterService;->success:Z

    return-void
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->tries:I

    return v0
.end method

.method static synthetic access$9(I)V
    .locals 0

    .prologue
    .line 39
    sput p0, Lcom/vkontakte/android/ContactsSyncAdapterService;->tries:I

    return-void
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
    .line 362
    .local p4, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p5, "photoUpdates":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    const/16 v27, 0x0

    .local v27, "update":Z
    const/16 v23, 0x1

    .local v23, "photoChanged":Z
    const/16 v19, 0x1

    .local v19, "nameChanged":Z
    const/4 v8, 0x1

    .local v8, "bdateChanged":Z
    const/16 v20, 0x1

    .line 363
    .local v20, "phoneChanged":Z
    const/16 v24, 0x0

    .local v24, "photoExists":Z
    const/4 v9, 0x0

    .local v9, "bdateExists":Z
    const/16 v21, 0x0

    .line 364
    .local v21, "phoneExists":Z
    const/16 v28, 0x0

    .local v28, "updateContactID":I
    const/16 v18, -0x1

    .line 366
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

    .line 368
    .local v17, "dataUri":Landroid/net/Uri;
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "account_type=\'com.vkontakte.account\' AND sync1="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 369
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 370
    const/16 v27, 0x1

    .line 371
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 372
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 374
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

    const-string v6, "raw_contact_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 375
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 376
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 379
    :cond_0
    :try_start_0
    const-string v2, "mimetype"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 380
    .local v26, "type":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 381
    const-string v2, "data_sync1"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 382
    .local v15, "curPhoto":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v23, 0x0

    .line 383
    :goto_0
    const/16 v24, 0x1

    .line 384
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 399
    .end local v15    # "curPhoto":Ljava/lang/String;
    .end local v26    # "type":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 377
    if-nez v2, :cond_0

    .line 402
    :cond_2
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_3
    const/16 v22, 0x0

    check-cast v22, [B

    .line 416
    .local v22, "photo":[B
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 418
    .local v29, "valueBack":I
    if-nez v27, :cond_4

    .line 419
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

    .line 420
    .local v10, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "account_name"

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 421
    const-string v2, "account_type"

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 422
    const-string v2, "sync1"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 423
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    if-eqz v19, :cond_5

    .line 427
    if-nez v27, :cond_12

    .line 428
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 429
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 434
    :goto_2
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 435
    const-string v2, "data2"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 436
    const-string v2, "data3"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 437
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    if-eqz v23, :cond_6

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->photo:Ljava/lang/String;

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 441
    new-instance v25, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;-><init>(Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;)V

    .line 442
    .local v25, "r":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    move-object/from16 v0, p2

    iget v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    move-object/from16 v0, v25

    iput v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->uid:I

    .line 443
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    .line 444
    move/from16 v0, v18

    move-object/from16 v1, v25

    iput v0, v1, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->existingID:I

    .line 445
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 448
    .end local v25    # "r":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    :cond_6
    if-eqz v22, :cond_7

    if-eqz v23, :cond_7

    .line 449
    if-nez v27, :cond_13

    .line 450
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 451
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 459
    :goto_3
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 460
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 461
    const-string v2, "data15"

    move-object/from16 v0, v22

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 462
    const-string v2, "data_sync1"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 463
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    if-eqz v20, :cond_8

    .line 467
    if-nez v27, :cond_15

    .line 468
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 469
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 477
    :goto_4
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 478
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 479
    const-string v2, "data1"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 480
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 481
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_8
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    if-eqz v2, :cond_9

    if-eqz v8, :cond_9

    .line 485
    if-nez v27, :cond_17

    .line 486
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 487
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 495
    :goto_5
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 496
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 497
    const-string v2, "data1"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 498
    const-string v2, "data2"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 499
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_9
    if-nez v27, :cond_a

    .line 503
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 504
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    move/from16 v0, v29

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 505
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/vnd.com.vkontakte.android.profile"

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 506
    const-string v2, "data1"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 507
    const-string v2, "data2"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 508
    const-string v2, "data3"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 509
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_a
    if-eqz v27, :cond_19

    move-object/from16 v0, p3

    iget-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p3

    iput-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    .line 514
    :goto_6
    move-object/from16 v0, p3

    iget-wide v2, v0, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p3

    iput-wide v2, v0, Landroid/content/SyncStats;->numEntries:J

    .line 516
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Added/updated contact: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v2, 0x1

    return v2

    .line 382
    .end local v22    # "photo":[B
    .end local v29    # "valueBack":I
    .restart local v15    # "curPhoto":Ljava/lang/String;
    .restart local v26    # "type":Ljava/lang/String;
    :cond_b
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 385
    .end local v15    # "curPhoto":Ljava/lang/String;
    :cond_c
    :try_start_1
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 386
    const-string v2, "data2"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 387
    .local v12, "curFName":Ljava/lang/String;
    const-string v2, "data3"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 388
    .local v13, "curLName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v19, 0x0

    :goto_7
    goto/16 :goto_1

    :cond_d
    const/16 v19, 0x1

    goto :goto_7

    .line 389
    .end local v12    # "curFName":Ljava/lang/String;
    .end local v13    # "curLName":Ljava/lang/String;
    :cond_e
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 390
    const-string v2, "data1"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 391
    .local v14, "curPhone":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v20, 0x0

    .line 392
    :goto_8
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 391
    :cond_f
    const/16 v20, 0x1

    goto :goto_8

    .line 393
    .end local v14    # "curPhone":Ljava/lang/String;
    :cond_10
    const-string v2, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    const-string v2, "data1"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 395
    .local v11, "curBdate":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_11

    const/4 v8, 0x0

    .line 396
    :goto_9
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 395
    :cond_11
    const/4 v8, 0x1

    goto :goto_9

    .line 431
    .end local v11    # "curBdate":Ljava/lang/String;
    .end local v26    # "type":Ljava/lang/String;
    .restart local v22    # "photo":[B
    .restart local v29    # "valueBack":I
    :cond_12
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 432
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_contact_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 452
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_13
    if-nez v24, :cond_14

    .line 453
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 454
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_3

    .line 456
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_14
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 457
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_contact_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    const-string v3, "vnd.android.cursor.item/photo"

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

    .line 470
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_15
    if-nez v21, :cond_16

    .line 471
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 472
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_4

    .line 474
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_16
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 475
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_contact_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    goto/16 :goto_4

    .line 488
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_17
    if-nez v9, :cond_18

    .line 489
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 490
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_5

    .line 492
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_18
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 493
    .restart local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_contact_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    goto/16 :goto_5

    .line 513
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_19
    move-object/from16 v0, p3

    iget-wide v2, v0, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p3

    iput-wide v2, v0, Landroid/content/SyncStats;->numInserts:J

    goto/16 :goto_6

    .line 398
    .end local v22    # "photo":[B
    .end local v29    # "valueBack":I
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method private static getLocalPhoneNumbers()Ljava/util/Vector;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 536
    sget-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "account_type"

    aput-object v4, v2, v7

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 537
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 538
    :cond_0
    const-string v0, "vk"

    const-string v1, "cursor.getCount = 0 || cursor==null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_0
    return-object v3

    .line 541
    :cond_1
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 542
    .local v14, "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Long;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 544
    :cond_2
    const-string v0, "com.vkontakte.account"

    const-string v1, "account_type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 545
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 543
    if-nez v0, :cond_2

    .line 550
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 551
    const-string v0, "vk"

    const-string v1, "idsToGet.size = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :cond_4
    const-string v13, ""

    .line 555
    .local v13, "ids":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 558
    invoke-virtual {v13, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 560
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 561
    .local v15, "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 563
    sget-object v4, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v6, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v6, v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data2=2 AND raw_contact_id IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 565
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 566
    :cond_5
    const-string v0, "vk"

    const-string v1, "cursor2.getCount = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 555
    .end local v15    # "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 556
    .local v11, "id":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 569
    .end local v11    # "id":J
    .restart local v15    # "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 572
    :cond_8
    const-string v0, "data1"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 570
    if-nez v0, :cond_8

    .line 574
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v3, v15

    .line 575
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

    .line 348
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 349
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

    .line 350
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 351
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    :cond_0
    const-string v0, "sync1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 352
    if-nez v0, :cond_0

    .line 357
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_2
    return-object v7
.end method

.method private static getProfile(Lorg/json/JSONObject;)Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    .locals 13
    .param p0, "user"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 89
    new-instance v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;-><init>()V

    .line 90
    .local v4, "up":Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    const-string v5, "uid"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    .line 91
    const-string v5, "first_name"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->firstName:Ljava/lang/String;

    .line 92
    const-string v5, "last_name"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->lastName:Ljava/lang/String;

    .line 93
    const-string v5, "photo_medium_rec"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->photo:Ljava/lang/String;

    .line 94
    iput-object v12, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    .line 95
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    .line 107
    :cond_0
    :goto_0
    const-string v5, "nickname"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->nickname:Ljava/lang/String;

    .line 108
    const-string v5, "bdate"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 109
    const-string v5, "bdate"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "\\."

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "bd":[Ljava/lang/String;
    array-length v5, v0

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v7, v0, v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v0, v10

    invoke-static {v7}, Lcom/vkontakte/android/ContactsSyncAdapterService;->zInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v0, v6

    invoke-static {v7}, Lcom/vkontakte/android/ContactsSyncAdapterService;->zInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    .line 112
    :cond_1
    array-length v5, v0

    if-ne v5, v11, :cond_2

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "0000-"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v0, v10

    invoke-static {v7}, Lcom/vkontakte/android/ContactsSyncAdapterService;->zInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v6

    invoke-static {v6}, Lcom/vkontakte/android/ContactsSyncAdapterService;->zInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    .line 116
    .end local v0    # "bd":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v4

    .line 97
    :cond_3
    const-string v5, "mobile_phone"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    const-string v5, "mobile_phone"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "ph":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 100
    .local v2, "pc":[C
    const-string v3, ""

    .line 101
    array-length v7, v2

    move v5, v6

    :goto_2
    if-lt v5, v7, :cond_4

    .line 105
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iput-object v3, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->phone:Ljava/lang/String;

    goto/16 :goto_0

    .line 101
    :cond_4
    aget-char v1, v2, v5

    .line 102
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_5

    const/16 v8, 0x2b

    if-ne v1, v8, :cond_6

    .line 103
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 115
    .end local v1    # "c":C
    .end local v2    # "pc":[C
    .end local v3    # "ph":Ljava/lang/String;
    :cond_7
    iput-object v12, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->bdate:Ljava/lang/String;

    goto :goto_1
.end method

.method private getSyncAdapter()Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->syncAdapter:Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->syncAdapter:Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 80
    :cond_0
    sget-object v0, Lcom/vkontakte/android/ContactsSyncAdapterService;->syncAdapter:Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

    return-object v0
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 35
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
    .line 122
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    .line 123
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "performSync: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 127
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->clear()V

    .line 128
    const/4 v2, 0x0

    move-object/from16 v0, p5

    iput-boolean v2, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v8, Lcom/vkontakte/android/ContactsSyncAdapterService;->lastSyncTime:J

    sub-long/2addr v2, v8

    const-wide/32 v8, 0x493e0

    cmp-long v2, v2, v8

    if-gez v2, :cond_1

    .line 132
    const-string v2, "vk"

    const-string v3, "too many retries"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 137
    .local v26, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "sid"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    const-string v2, "uid"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/vkontakte/android/Global;->uid:I

    .line 139
    const-string v2, "sid"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 140
    const-string v2, "secret"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 141
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v2

    const-string v3, "vk_uid"

    new-instance v5, Ljava/lang/StringBuilder;

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    :cond_2
    const-string v2, "sync_all"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 145
    .local v30, "syncAllFriends":Z
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 147
    .local v14, "contacts":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;>;"
    invoke-static {}, Lcom/vkontakte/android/ContactsSyncAdapterService;->getLocalPhoneNumbers()Ljava/util/Vector;

    move-result-object v22

    .line 148
    .local v22, "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 149
    :cond_3
    const-string v2, "vk"

    const-string v3, "No local numbers"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz v30, :cond_0

    .line 183
    :goto_1
    move-object/from16 v0, p5

    iget-boolean v2, v0, Landroid/content/SyncResult;->databaseError:Z

    if-nez v2, :cond_0

    .line 185
    if-eqz v30, :cond_5

    .line 186
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->success:Z

    .line 187
    const/4 v2, 0x3

    sput v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->tries:I

    .line 188
    :goto_2
    sget v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->tries:I

    if-lez v2, :cond_4

    sget-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->success:Z

    if-eqz v2, :cond_a

    .line 219
    :cond_4
    sget-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->success:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p5

    iput-boolean v2, v0, Landroid/content/SyncResult;->databaseError:Z

    .line 222
    :cond_5
    move-object/from16 v0, p5

    iget-boolean v2, v0, Landroid/content/SyncResult;->databaseError:Z

    if-nez v2, :cond_0

    .line 224
    invoke-static {}, Lcom/vkontakte/android/ContactsSyncAdapterService;->getLocalUids()Ljava/util/Vector;

    move-result-object v19

    .line 225
    .local v19, "localUids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v20

    .line 227
    .local v20, "ls":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v6, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 229
    .local v7, "photoUpdates":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    new-instance v25, Ljava/util/Vector;

    invoke-direct/range {v25 .. v25}, Ljava/util/Vector;-><init>()V

    .line 231
    .local v25, "photoResults":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 251
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 252
    const-string v2, "vk"

    const-string v3, "Applying DB changes!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :try_start_1
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :try_start_2
    const-string v2, "vk"

    const-string v3, "Contacts updated"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_3
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Will update "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " photos..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v32, "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_4
    const/4 v2, 0x5

    move/from16 v0, v18

    if-lt v0, v2, :cond_e

    .line 275
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v5, "true"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 277
    .local v16, "dataUri":Landroid/net/Uri;
    :goto_5
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_f

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_f

    sget v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    if-gtz v2, :cond_f

    .line 316
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v17, "delOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v2, v0, :cond_7

    .line 319
    const-string v33, ""

    .line 320
    .local v33, "uids":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    .line 321
    const/4 v2, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    .line 322
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v3

    int-to-long v8, v3

    iput-wide v8, v2, Landroid/content/SyncStats;->numDeletes:J

    .line 323
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

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "account_type=\'com.vkontakte.account\' AND sync1 IN ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

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

    .line 325
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    .line 326
    .local v23, "op":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v23    # "op":Landroid/content/ContentProviderOperation;
    .end local v33    # "uids":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 332
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Deleting "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " contacts"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 334
    const-string v2, "vk"

    const-string v3, "OK!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_7
    const-string v2, "vk"

    const-string v3, "Sync done!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->lastSyncTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 341
    .end local v6    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v7    # "photoUpdates":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    .end local v14    # "contacts":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;>;"
    .end local v16    # "dataUri":Landroid/net/Uri;
    .end local v17    # "delOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v18    # "i":I
    .end local v19    # "localUids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v20    # "ls":I
    .end local v22    # "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v25    # "photoResults":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    .end local v26    # "prefs":Landroid/content/SharedPreferences;
    .end local v30    # "syncAllFriends":Z
    .end local v32    # "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    :catch_0
    move-exception v34

    .line 342
    .local v34, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v2, 0x1

    move-object/from16 v0, p5

    iput-boolean v2, v0, Landroid/content/SyncResult;->databaseError:Z

    goto/16 :goto_0

    .line 153
    .end local v34    # "x":Ljava/lang/Exception;
    .restart local v14    # "contacts":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;>;"
    .restart local v22    # "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v26    # "prefs":Landroid/content/SharedPreferences;
    .restart local v30    # "syncAllFriends":Z
    :cond_8
    :try_start_3
    const-string v21, ""

    .line 154
    .local v21, "ns":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 155
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 159
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "friends.getByPhones"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 160
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->forceHTTPS(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 161
    const-string v3, "fields"

    const-string v5, "photo_medium_rec,bdate,contacts"

    invoke-virtual {v2, v3, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 162
    const-string v3, "phones"

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 163
    new-instance v3, Lcom/vkontakte/android/ContactsSyncAdapterService$1;

    move/from16 v0, v30

    move-object/from16 v1, p5

    invoke-direct {v3, v14, v0, v1}, Lcom/vkontakte/android/ContactsSyncAdapterService$1;-><init>(Ljava/util/Vector;ZLandroid/content/SyncResult;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto/16 :goto_1

    .line 154
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .local v29, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_8

    .line 189
    .end local v21    # "ns":Ljava/lang/String;
    .end local v29    # "s":Ljava/lang/String;
    :cond_a
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "friends.get"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 190
    const-string v3, "fields"

    const-string v5, "photo_medium_rec,bdate,contacts"

    invoke-virtual {v2, v3, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 191
    new-instance v3, Lcom/vkontakte/android/ContactsSyncAdapterService$2;

    invoke-direct {v3, v14}, Lcom/vkontakte/android/ContactsSyncAdapterService$2;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto/16 :goto_2

    .line 231
    .restart local v6    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v7    # "photoUpdates":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    .restart local v19    # "localUids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v20    # "ls":I
    .restart local v25    # "photoResults":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;

    .line 232
    .local v4, "p":Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/vkontakte/android/ContactsSyncAdapterService;->addOrUpdateContact(Landroid/content/Context;Landroid/accounts/Account;Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;Landroid/content/SyncStats;Ljava/util/ArrayList;Ljava/util/Vector;)Z

    .line 236
    iget v2, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_c

    .line 239
    const-string v2, "vk"

    const-string v3, "Applying DB changes!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 241
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 242
    const-string v2, "vk"

    const-string v3, "Contacts updated"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_c
    sget-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needCancel:Z

    if-eqz v2, :cond_6

    .line 245
    const-string v2, "vk"

    const-string v3, "need cancel!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needCancel:Z

    goto/16 :goto_0

    .line 255
    .end local v4    # "p":Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    :catch_1
    move-exception v34

    .line 256
    .restart local v34    # "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "OH SHI~"

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    const/4 v2, 0x1

    move-object/from16 v0, p5

    iput-boolean v2, v0, Landroid/content/SyncResult;->databaseError:Z

    goto/16 :goto_0

    .line 262
    .end local v34    # "x":Ljava/lang/Exception;
    :cond_d
    const-string v2, "vk"

    const-string v3, "Nothing to update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 268
    .restart local v18    # "i":I
    .restart local v32    # "threads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    :cond_e
    new-instance v31, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;

    move-object/from16 v0, v25

    invoke-direct {v2, v7, v0}, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 269
    .local v31, "t":Ljava/lang/Thread;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Thread;->start()V

    .line 271
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Started DL thread #"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 278
    .end local v31    # "t":Ljava/lang/Thread;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    :cond_f
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "updates "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", results "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

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

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_10

    sget v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->numDlThreads:I

    if-nez v2, :cond_12

    .line 280
    :cond_10
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needPausePhotoDownload:Z

    .line 281
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v24, "photoOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_11
    :goto_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_13

    .line 305
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Updating "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " photos"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 307
    const-string v2, "vk"

    const-string v3, "Update done..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->needPausePhotoDownload:Z

    .line 309
    sget-object v3, Lcom/vkontakte/android/ContactsSyncAdapterService;->photoDownloadLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 310
    :try_start_4
    sget-object v2, Lcom/vkontakte/android/ContactsSyncAdapterService;->photoDownloadLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 309
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 313
    .end local v24    # "photoOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_12
    const-wide/16 v2, 0xa

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_5

    .line 282
    .restart local v24    # "photoOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_13
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "res "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;

    .line 284
    .local v27, "r":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    move-object/from16 v0, v27

    iget v2, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->existingID:I

    if-lez v2, :cond_14

    .line 285
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget v5, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->existingID:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 287
    const-string v3, "data15"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 288
    const-string v3, "data_sync1"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 285
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 291
    :cond_14
    sget-object v8, Lcom/vkontakte/android/ContactsSyncAdapterService;->resolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v10, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync1="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 292
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_11

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_11

    .line 293
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 294
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 295
    .local v28, "rawContactID":I
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 296
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 297
    const-string v3, "raw_contact_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 298
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 299
    const-string v3, "data15"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 300
    const-string v3, "data_sync1"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 301
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 296
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_9

    .line 309
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v27    # "r":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    .end local v28    # "rawContactID":I
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2

    .line 320
    .end local v24    # "photoOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v17    # "delOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v33    # "uids":Ljava/lang/String;
    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .local v29, "s":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_6

    .line 336
    .end local v29    # "s":I
    .end local v33    # "uids":Ljava/lang/String;
    :cond_16
    const-string v2, "vk"

    const-string v3, "Nothing to delete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_7
.end method

.method private static zInt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    .end local p0    # "i":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "ret":Landroid/os/IBinder;
    invoke-direct {p0}, Lcom/vkontakte/android/ContactsSyncAdapterService;->getSyncAdapter()Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ContactsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 50
    return-object v0
.end method
